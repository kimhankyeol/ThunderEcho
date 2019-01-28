package poly.controller;


import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.UUID;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.catalina.connector.Request;
import org.apache.commons.collections.CollectionUtils;
import org.apache.commons.lang3.StringEscapeUtils;
import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import poly.dto.NoticeDTO;
import poly.service.INoticeService;
import poly.util.CmmUtil;
import poly.util.StringUtil;

@Controller
public class NoticeController {
	@Resource(name="NoticeService")
	private INoticeService noticeService; 
	
	
	private Logger log = Logger.getLogger(this.getClass());

    //////////////////////////////////////////////////////////////////////////////////////
   
	//ckeditor 공지사항 리스트
    @RequestMapping(value="/noticeList")
	public String noticeList(HttpServletRequest request,Model model) throws Exception{
		
    	log.info(this.getClass().getName() + ".NoticeList start!");

		
		List<NoticeDTO> nList = new ArrayList(); 
	
		
		nList = noticeService.getNoticeList();
	
		model.addAttribute("nList",nList);
		return "/notice/noticeList";
	}
	//ckeditor 등록화면
    @RequestMapping(value="/noticeInsertView")
	public String noticeInsertView(HttpServletRequest req, HttpServletResponse res,Model model) throws Exception {
    	
		return "/notice/noticeWrite";
	}
    //ckEditor 등록
    @RequestMapping(value="/noticeInsert")
   	public String noticeInsert(HttpServletRequest req, HttpServletResponse res,Model model,NoticeDTO nDTO) throws Exception {
       	
    	req.setCharacterEncoding("utf-8");
		
		
		log.info(this.getClass() + "ckInsert Start!!!");
		String title = CmmUtil.nvl(req.getParameter("title"));
		
		// 파일명을 뽑아오기 위해 태그변환
		String content= CmmUtil.nvl(StringEscapeUtils.unescapeHtml3(StringUtil.replaceWordLtGt(req.getParameter("content"))));
		List imgList = new ArrayList();
		imgList = StringUtil.getImgSrc(content);
		String urlConPath="";
		//이동 전에 폴더
		String tempPath=req.getSession().getServletContext().getRealPath("/tempImg/");
		//이동 후에 폴더
		String newFilePath=req.getSession().getServletContext().getRealPath("/noticeUpdImg/");
		String fileName="";
		//temp 에서 - > notice로
		for (int i = 0; i<imgList.size();i++) {
			urlConPath=imgList.get(i).toString().replace("http://localhost:8080/tempImg/", tempPath);//fileUrl을 삭제해 파일명만구함
			System.out.println("파일이름 확인하라잉1:"+urlConPath);
			fileName=urlConPath.replace(tempPath, "");//fileUrl을 삭제해 파일명만구함
			System.out.println("파일이름 확인하라잉2:"+fileName);
			StringUtil.fileMove(tempPath+fileName, newFilePath+fileName);
		}
		
		
		nDTO.setNoticeTitle(title);
		nDTO.setNoticeContent(content.replaceAll("tempImg","noticeUpdImg"));
		
		int result = noticeService.insertNotice(nDTO);
		String msg = "";
		String url = "";
		
		//여기서 등록이 되면 임시저장소에 업로드된 파일을 이미지 폴더로 옮기면될듯 
		
		if(result == 1) {
			msg="등록되었습니다.";
			url="/noticeList.do"; //일단은 홈으로
			model.addAttribute("msg",msg);
			model.addAttribute("url",url);
		}else {
			msg="등록되지 않았습니다.";
			url="/main.do"; //일단은 홈으로
			model.addAttribute("msg",msg);
			model.addAttribute("url",url);
		}
		
		log.info(this.getClass() + "ckInsert End!!!");
		
		return "alert";
    	
   	}
    //ckEditor 공지사항 디테일
    @RequestMapping(value="/noticeDetail")
	public String noticeDetail(HttpServletRequest req,Model model)throws Exception{
		String noticeNo = req.getParameter("noticeNo");
		NoticeDTO nDTO = new NoticeDTO(); 
		nDTO.setNoticeNo(noticeNo);
		nDTO = noticeService.getNoticeDetail(nDTO);
		model.addAttribute("nDTO",nDTO);
		
		return "/notice/noticeDetail";
	}
    //ckEditor 공지사항 수정 화면
    @RequestMapping(value="/noticeUpdateView")
	public String noticeUpdateView(HttpServletRequest req, HttpServletResponse res,Model model) throws Exception {
    	String noticeNo = req.getParameter("noticeNo");
		NoticeDTO nDTO = new NoticeDTO(); 
		nDTO.setNoticeNo(noticeNo);
		nDTO = noticeService.getNoticeDetail(nDTO);
		
		model.addAttribute("nDTO",nDTO);
		return "/notice/noticeUpdate";
	}
    
  //공지사항 수정
    @RequestMapping(value="/noticeUpdate")
    public String noticeUpdate(HttpServletRequest req,NoticeDTO nDTO,NoticeDTO nDTO2,Model model)throws Exception{
    	log.info(this.getClass() + "공지사항 수정 시작");
    	
    	//1.nDTO2에 수정하기 전 img src 를 불러와 content2 에 저장
    	String noticeNo = req.getParameter("noticeNo");
		nDTO2.setNoticeNo(noticeNo);
		nDTO2 = noticeService.getNoticeDetail(nDTO2);
		String content2=nDTO2.getNoticeContent();
	
    	String title = CmmUtil.nvl(req.getParameter("title"));
		//태그 변환 StringEscapeUtils.unescapeHtml3
    	String content= CmmUtil.nvl(StringEscapeUtils.unescapeHtml3(StringUtil.replaceWordLtGt(req.getParameter("content"))));
    	
		nDTO.setNoticeNo(noticeNo);
		nDTO.setNoticeTitle(title);
		nDTO.setNoticeContent(content);
	
		/*
		 urlConPath=imgList.get(i).toString().replace("http://localhost:8080/tempImg/", tempPath);//fileUrl을 삭제해 파일명만구함
			System.out.println("파일이름 확인하라잉1:"+urlConPath);
			fileName=urlConPath.replace(tempPath, "");//fileUrl을 삭제해 파일명만구함
			System.out.println("파일이름 확인하라잉2:"+fileName);
			StringUtil.fileMove(tempPath+fileName, newFilePath+fileName);
		 
		  */
		//수정하기 전 수정한 후 비교
		//이동 전에 폴더
		String tempPath=req.getSession().getServletContext().getRealPath("/tempImg/");
		//이동 후에 폴더
		String newFilePath=req.getSession().getServletContext().getRealPath("/noticeUpdImg/");
		//수정에서는 3가지 정도 예가 있음
		//1.기존에 비해 이미지파일이 추가되거나
		//2.기존에 비해 이미지파일이 줄어들거나
		//3. 아예 다삭제되거나 전체적으로 바뀌거나
		String compFile="";
		String fileName="";
		String urlConPath="";
	
		// 기존 이미지 존재여부 확인 후 수정
		List<String> imgList = new ArrayList<>();
		imgList = StringUtil.getImgSrc(content);
	
		
		for (int i = 0; i<imgList.size();i++) {
		
			//기존에 있는 폴더에서 비교
			compFile=imgList.get(i).toString().replace("http://localhost:8080/noticeUpdImg/", "");
			System.out.println("update = 파일이름 확인하라잉1:"+urlConPath);
			File file = new File(req.getSession().getServletContext().getRealPath("/noticeUpdImg/")+compFile);
			boolean isExists = file.exists();
			if(isExists) {
				System.out.println("파일 존재 "+fileName);
			}
			else {
				fileName=imgList.get(i).toString().replace("http://localhost:8080/tempImg/", "");
				System.out.println("파일 존재하지 않음 "+fileName);
				StringUtil.fileMove(tempPath+fileName, newFilePath+fileName);
				nDTO.setNoticeContent(content.replaceAll("tempImg","noticeUpdImg"));
			}
					
		}
		//확인하기 위한것
		
/*		Iterator c1 = comList.iterator();
		while(c1.hasNext()) {
			System.out.println("comList : "+c1.next().toString());
		}
		Iterator c2 = imgList.iterator();
		while(c2.hasNext()) {
			System.out.println("imgList : "+c2.next().toString());
		}
*/
		//비교해서 없는 거 삭제
		List<String> comList = new ArrayList<>();
		comList = StringUtil.getImgSrc(content2);
		 Collection<String> imgDelFile = CollectionUtils.subtract(comList, imgList);
	
		 for(String imgPath:imgDelFile) {
			 File file2= new File(imgPath.replace("http://localhost:8080/noticeUpdImg/", newFilePath));
			 file2.delete();
			 System.out.println("test:"+imgPath.replace("http://localhost:8080/noticeUpdImg/", newFilePath));
		 }
		
		
		int result = noticeService.updateNotice(nDTO);
		String msg = "";
		String url = "";
		if(result == 1) {
			msg="수정되었습니다.";
			url="/noticeList.do"; //일단은 홈으로
			model.addAttribute("msg",msg);
			model.addAttribute("url",url);
		}else {
			msg="수정되지 않았습니다.";
			url="/main.do"; //일단은 홈으로
			model.addAttribute("msg",msg);
			model.addAttribute("url",url);
		}
	
		log.info(this.getClass() + "공지사항 수정 끝");
		
		return "/alert";
    }
    
    
    //ckEditor 파일업로드
    @RequestMapping(value="/ckEditor/imgUpload")
    public void communityImageUpload(HttpServletRequest request, HttpServletResponse response, @RequestParam MultipartFile upload) {
    	log.info(this.getClass() + "시작인가?");
        OutputStream out = null;
        PrintWriter printWriter = null;
        response.setCharacterEncoding("utf-8");
        response.setContentType("text/html;charset=utf-8");

        try{
          
        	//원본 파일명 받고
            String fileName = upload.getOriginalFilename();
            //이름 겹치지 않게 유효한 값으로 바꿔서
            String reFileName="";
            String extended = fileName.substring(fileName.indexOf("."),fileName.length()); //이미지의 명을 main.jpg 이런식으로 받아오는데 substring을 이용해 .뒤에 문자가 다나오도록 쓰는거 같음
    		String now = new SimpleDateFormat("yyyyMMddhmsS").format(new Date()); //현재시간 나타내는 변수
    		//새로운 파일이름
    		reFileName=now+extended;
    		//이동 임시로 업로드할 폴더
    		String tempPath=request.getSession().getServletContext().getRealPath("/tempImg/");
    		log.info(request.getSession().getServletContext()+"확인중");
    		//업로드한 파일을 바이트 배열로 변환
            byte[] bytes = upload.getBytes();
            String uploadPath = tempPath+reFileName;//배포 경로 저장경로
            //개발 디렉토리 와 배포디렉토리
            //경로는 배포 디렉토리
            //jsp 파일에서 자바문법으로 디렉토리 확인 application.getRealPath

            out = new FileOutputStream(new File(uploadPath));
            
            //서버로 업로드
            out.write(bytes);
            //클라이언트에 결과를 표시하기 위해 콜백
            String callback = request.getParameter("CKEditorFuncNum");
            //서버-> 클라이언트로 텍스트 전송
            printWriter = response.getWriter();
            //String fileUrl=StringUtil.replaceRevSlash(request.getSession().getServletContext().getRealPath("/tempImg/")+ reFileName);//url경로
            String fileUrl=StringUtil.replaceRevSlash("http://localhost:8080/tempImg/"+ reFileName);//url경로
            
            printWriter.println("<script type='text/javascript'>window.parent.CKEDITOR.tools.callFunction("
                    + callback
                    + ",'"
                    + fileUrl
                    + "','이미지를 업로드 하였습니다.'"
                    + ")</script>");
            printWriter.flush();
 
        }catch(IOException e){
            e.printStackTrace();
        } finally {
            try {
                if (out != null) {
                    out.close();
                }
                if (printWriter != null) {
                    printWriter.close();
                }
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
    	log.info(this.getClass() + " 끝인가?");
        return;
        
    }
}
