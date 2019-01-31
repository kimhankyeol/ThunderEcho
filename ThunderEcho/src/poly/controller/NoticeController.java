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
import javax.servlet.http.HttpSession;

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
import poly.dto.PagingDTO;
import poly.service.INoticeService;
import poly.util.CmmUtil;
import poly.util.StringUtil;

@Controller
public class NoticeController {
	@Resource(name="NoticeService")
	private INoticeService noticeService; 
	
	
	private Logger log = Logger.getLogger(this.getClass());
	
	////관리자 ////////////////////////////////////
	//관리자 로그인창
	@RequestMapping(value="/thunderAdmin")
	public String thunderAdmin() throws Exception {
		
		return "/notice/adminLogin";
		
	}
	//관리자 로그인
	@RequestMapping(value="/thunderAdminLogin",method=RequestMethod.POST)
	public String thunderAdminLogin(HttpServletRequest req,NoticeDTO nDTO,HttpSession session,Model model) throws Exception {
		String id = req.getParameter("userId");
		String password = req.getParameter("userPassword");
		
		nDTO.setId(id);
		nDTO.setPassword(password);
		
		nDTO = noticeService.getAdminLogin(nDTO);
		log.info(nDTO);
		
		if (nDTO!=null) {
			session.setAttribute("userName",nDTO.getUserName());
			model.addAttribute("msg",nDTO.getUserName()+"님 환영합니다.");
			model.addAttribute("url","/adminNoticeList.do?pagenum=1&contentnum=10");
		}else {
			model.addAttribute("msg","다시 로그인 해주세요");
			model.addAttribute("url","/thunderAdmin.do");
		}
	
		return "/alert";
		
	}
	//관리자 로그아웃
		@RequestMapping(value="/logout")
		public String logout(HttpSession session,Model model) throws Exception {
				session.invalidate();
			
				model.addAttribute("msg","로그아웃 하셨습니다.");
				model.addAttribute("url","/main.do");
		
		
			
			return "/alert";
			
		}
	//관리자 공지사항 리스트
		@RequestMapping(value="/adminNoticeList")
		public String adminNoticeList(HttpServletRequest request,Model model) throws Exception{
			
			log.info(this.getClass() + ".NoticeList start!");
	    	String searchWord = CmmUtil.nvl(request.getParameter("searchWord"));
	    	String selBox = CmmUtil.nvl(request.getParameter("selBox"));
	    	log.info("SearchWord"+searchWord);
	    	if(searchWord.equals("")&&selBox.equals("")) {
	    		PagingDTO paging = new PagingDTO();
	        	int pagenum=Integer.parseInt(request.getParameter("pagenum"));
	        	int contentnum = Integer.parseInt(request.getParameter("contentnum"));
	    		int totalCount = noticeService.getNoticeListTotalCount();
	    		paging.setTotalcount(totalCount);//전체 게시글 지정
	    		paging.setPagenum(pagenum-1);// 현재페이지를 페이지 객체에 지정한다 -1 해야 쿼리에서 사용가능
	    		paging.setContentnum(contentnum);// 한 페이지에 몇개 씩 게시글을 보여줄지 지정
	    		paging.setCurrentblock(pagenum);//현재 페이지 블록이 몇번인지 현재 페이지 번호를 통해서 지정함
	    		paging.setLastblock(paging.getTotalcount());//마지막 블록 번호를 전체 게시글 수를 통해 정함
	    		log.info("Last block:"+paging.getTotalcount());
	    		
	    		paging.prevnext(pagenum); //현재 페이지 번호로 화살표를 나타낼지 정함
	    		paging.setStartPage(paging.getCurrentblock());//시작페이지를 페이지 블록번호로 정함
	    		paging.setEndPage(paging.getLastblock(), paging.getCurrentblock());//마지막 페이지를 마지막 페이지 블록과 현재 페이지 블록번호로 정함
	    		//
	    		
	    		List<NoticeDTO> nList = new ArrayList(); 
	    		int i = paging.getPagenum()*10;
	    		int j = paging.getContentnum();
	    		HashMap<String, Integer> hMap = new HashMap<>();
	    		hMap.put("pagenum",i);
	    		hMap.put("contentnum", j);
	    		
	    		nList = noticeService.getNoticeList(hMap);
	    		// 페이징 정보 전달.
	    		
	    		model.addAttribute("nList",nList);
	    		model.addAttribute("paging",paging);
	    		nList=null;
	    		paging=null;
	    		log.info(this.getClass() + ".NoticeList end!");
	    	}else {
	    		log.info("이거 실행하고 있어");
	    		PagingDTO paging = new PagingDTO();
	    		//검색하기 위한 변수를 NoticeDTO에 선언하고 사용
	    	
	    		paging.setSearchWord(searchWord);
	    		paging.setSelBox(selBox);
	    		searchWord=paging.getSearchWord().toString();
	    		HashMap<String, Object> hMap = new HashMap<>();
	    		hMap.put("searchWord", searchWord);
	    		
	        	int pagenum=Integer.parseInt(request.getParameter("pagenum"));
	        	int contentnum = Integer.parseInt(request.getParameter("contentnum"));
	        	if(selBox.toString().equals("noticeContent")) {
	        		log.info("이거 실행하고 있어 내용");
	        		int totalCount = noticeService.getNoticeListSearchTotalCount(hMap);
	        		log.info("내용 검색  개수 :"+totalCount);
	        		paging.setTotalcount(totalCount);
	        		//전체 게시글 지정
	        		paging.setPagenum(pagenum-1);// 현재페이지를 페이지 객체에 지정한다 -1 해야 쿼리에서 사용가능
	        		paging.setContentnum(contentnum);// 한 페이지에 몇개 씩 게시글을 보여줄지 지정
	        		paging.setCurrentblock(pagenum);//현재 페이지 블록이 몇번인지 현재 페이지 번호를 통해서 지정함
	        		paging.setLastblock(paging.getTotalcount());//마지막 블록 번호를 전체 게시글 수를 통해 정함
	        		
	        		paging.prevnext(pagenum); //현재 페이지 번호로 화살표를 나타낼지 정함
	        		paging.setStartPage(paging.getCurrentblock());//시작페이지를 페이지 블록번호로 정함
	        		paging.setEndPage(paging.getLastblock(), paging.getCurrentblock());//마지막 페이지를 마지막 페이지 블록과 현재 페이지 블록번호로 정함
	        	
	        		
	        		List<NoticeDTO> nList = new ArrayList(); 
	        		int i = paging.getPagenum()*10;
	        		int j = paging.getContentnum();
	        	
	        		hMap.put("pagenum",i);
	        		hMap.put("contentnum", j);
	        		
	        		nList = noticeService.getNoticeSearchList(hMap);
	        		// 페이징 정보 전달.
	        		
	        		model.addAttribute("nList",nList);
	        		model.addAttribute("paging",paging);
	        		log.info(this.getClass() + ".NoticeList end!");
	        	}else if(selBox.toString().equals("noticeTitle")) {
	        		int totalCount = noticeService.getNoticeListSearchTitleCount(hMap);
	        		log.info("제목 검색  개수 :"+totalCount);
	        		paging.setTotalcount(totalCount);
	        		//전체 게시글 지정
	        		paging.setPagenum(pagenum-1);// 현재페이지를 페이지 객체에 지정한다 -1 해야 쿼리에서 사용가능
	        		paging.setContentnum(contentnum);// 한 페이지에 몇개 씩 게시글을 보여줄지 지정
	        		paging.setCurrentblock(pagenum);//현재 페이지 블록이 몇번인지 현재 페이지 번호를 통해서 지정함
	        		paging.setLastblock(paging.getTotalcount());//마지막 블록 번호를 전체 게시글 수를 통해 정함
	        		
	        		paging.prevnext(pagenum); //현재 페이지 번호로 화살표를 나타낼지 정함
	        		paging.setStartPage(paging.getCurrentblock());//시작페이지를 페이지 블록번호로 정함
	        		paging.setEndPage(paging.getLastblock(), paging.getCurrentblock());//마지막 페이지를 마지막 페이지 블록과 현재 페이지 블록번호로 정함
	        	
	        		
	        		List<NoticeDTO> nList = new ArrayList(); 
	        		int i = paging.getPagenum()*10;
	        		int j = paging.getContentnum();
	        	
	        		hMap.put("pagenum",i);
	        		hMap.put("contentnum", j);
	        		
	        		nList = noticeService.getNoticeSearchTitleList(hMap);
	        		// 페이징 정보 전달.
	        		
	        		model.addAttribute("nList",nList);
	        		model.addAttribute("paging",paging);
	        		log.info(this.getClass() + ".NoticeList end!");
	        	}
	    	}
	    	
			return "/notice/adminNoticeList";
		}
		
	//공지사항 삭제
	@RequestMapping(value="/notice/noticeDelete")
	public String deleteNotice(@RequestParam(value="noticeNoArr",required=true) List<String> noticeNoArr, HttpServletRequest req, HttpSession session,Model model) throws Exception{
		NoticeDTO nDTO = new NoticeDTO();
		String noticeNo="";
		//서버 파일 위치
		String newFilePath=req.getSession().getServletContext().getRealPath("/noticeUpdImg/");
		List<String> imgList = new ArrayList<>();
		String compFile="";
		int result=0;
		String msg="";
		String url="";
		for(int i =0 ;i<noticeNoArr.size();i++) {
			nDTO.setNoticeNo(noticeNoArr.get(i).toString());
			noticeNo=nDTO.getNoticeNo();
			//파일삭제 하기 위해 조회
			nDTO = noticeService.getNoticeDetail(nDTO);
			imgList = StringUtil.getDelImgSrc(nDTO.getNoticeContent());
			
			if(imgList.get(0).toString().equals("notValue")) {
				log.info("파일없음");
				result = noticeService.deleteNotice(nDTO);
			}else {
				Iterator i1 = imgList.iterator();
				while(i1.hasNext()) {
					compFile=i1.next().toString().replace("http://localhost:8080/noticeUpdImg/", "");
					File file = new File(newFilePath+compFile);
					file.delete();
					result = noticeService.deleteNotice(nDTO);
					log.info("지워졌나2"+result);
				}
				
			}
		}
		
		if(result==1) {
			model.addAttribute("msg","성공적으로 삭제했습니다.");
			model.addAttribute("url","/adminNoticeList.do?pagenum=1&contentnum=10");
		}else {
			model.addAttribute("msg","삭제 실패");
			model.addAttribute("url","/adminNoticeList.do?pagenum=1&contentnum=10");
		}
		
		return "/alert";
		
	}

		
    //////////////////////////////////////////////////////////////////////////////////////
	
		///////////////////////////////////////////////////////////
	//ckeditor 공지사항 리스트
    @RequestMapping(value="/noticeList")
	public String noticeList(HttpServletRequest request,Model model) throws Exception{
    	log.info(this.getClass() + ".NoticeList start!");
    	String searchWord = CmmUtil.nvl(request.getParameter("searchWord"));
    	String selBox = CmmUtil.nvl(request.getParameter("selBox"));
    	log.info("SearchWord"+searchWord);
    	if(searchWord.equals("")&&selBox.equals("")) {
    		PagingDTO paging = new PagingDTO();
        	int pagenum=Integer.parseInt(request.getParameter("pagenum"));
        	int contentnum = Integer.parseInt(request.getParameter("contentnum"));
    		int totalCount = noticeService.getNoticeListTotalCount();
    		paging.setTotalcount(totalCount);//전체 게시글 지정
    		paging.setPagenum(pagenum-1);// 현재페이지를 페이지 객체에 지정한다 -1 해야 쿼리에서 사용가능
    		paging.setContentnum(contentnum);// 한 페이지에 몇개 씩 게시글을 보여줄지 지정
    		paging.setCurrentblock(pagenum);//현재 페이지 블록이 몇번인지 현재 페이지 번호를 통해서 지정함
    		paging.setLastblock(paging.getTotalcount());//마지막 블록 번호를 전체 게시글 수를 통해 정함
    		log.info("Last block:"+paging.getTotalcount());
    		
    		paging.prevnext(pagenum); //현재 페이지 번호로 화살표를 나타낼지 정함
    		paging.setStartPage(paging.getCurrentblock());//시작페이지를 페이지 블록번호로 정함
    		paging.setEndPage(paging.getLastblock(), paging.getCurrentblock());//마지막 페이지를 마지막 페이지 블록과 현재 페이지 블록번호로 정함
    		//
    		
    		List<NoticeDTO> nList = new ArrayList(); 
    		int i = paging.getPagenum()*10;
    		int j = paging.getContentnum();
    		HashMap<String, Integer> hMap = new HashMap<>();
    		hMap.put("pagenum",i);
    		hMap.put("contentnum", j);
    		
    		nList = noticeService.getNoticeList(hMap);
    		// 페이징 정보 전달.
    		
    		model.addAttribute("nList",nList);
    		model.addAttribute("paging",paging);
    		nList=null;
    		paging=null;
    		log.info(this.getClass() + ".NoticeList end!");
    	}else {
    		log.info("이거 실행하고 있어");
    		PagingDTO paging = new PagingDTO();
    		//검색하기 위한 변수를 NoticeDTO에 선언하고 사용
    	
    		paging.setSearchWord(searchWord);
    		paging.setSelBox(selBox);
    		searchWord=paging.getSearchWord().toString();
    		HashMap<String, Object> hMap = new HashMap<>();
    		hMap.put("searchWord", searchWord);
    		
        	int pagenum=Integer.parseInt(request.getParameter("pagenum"));
        	int contentnum = Integer.parseInt(request.getParameter("contentnum"));
        	if(selBox.toString().equals("noticeContent")) {
        		log.info("이거 실행하고 있어 내용");
        		int totalCount = noticeService.getNoticeListSearchTotalCount(hMap);
        		log.info("내용 검색  개수 :"+totalCount);
        		paging.setTotalcount(totalCount);
        		//전체 게시글 지정
        		paging.setPagenum(pagenum-1);// 현재페이지를 페이지 객체에 지정한다 -1 해야 쿼리에서 사용가능
        		paging.setContentnum(contentnum);// 한 페이지에 몇개 씩 게시글을 보여줄지 지정
        		paging.setCurrentblock(pagenum);//현재 페이지 블록이 몇번인지 현재 페이지 번호를 통해서 지정함
        		paging.setLastblock(paging.getTotalcount());//마지막 블록 번호를 전체 게시글 수를 통해 정함
        		
        		paging.prevnext(pagenum); //현재 페이지 번호로 화살표를 나타낼지 정함
        		paging.setStartPage(paging.getCurrentblock());//시작페이지를 페이지 블록번호로 정함
        		paging.setEndPage(paging.getLastblock(), paging.getCurrentblock());//마지막 페이지를 마지막 페이지 블록과 현재 페이지 블록번호로 정함
        	
        		
        		List<NoticeDTO> nList = new ArrayList(); 
        		int i = paging.getPagenum()*10;
        		int j = paging.getContentnum();
        	
        		hMap.put("pagenum",i);
        		hMap.put("contentnum", j);
        		
        		nList = noticeService.getNoticeSearchList(hMap);
        		// 페이징 정보 전달.
        		
        		model.addAttribute("nList",nList);
        		model.addAttribute("paging",paging);
        		log.info(this.getClass() + ".NoticeList end!");
        	}else if(selBox.toString().equals("noticeTitle")) {
        		log.info("이거 실행하고 있어 제목");
        		int totalCount = noticeService.getNoticeListSearchTitleCount(hMap);
        		log.info("제목 검색  개수 :"+totalCount);
        		paging.setTotalcount(totalCount);
        		//전체 게시글 지정
        		paging.setPagenum(pagenum-1);// 현재페이지를 페이지 객체에 지정한다 -1 해야 쿼리에서 사용가능
        		paging.setContentnum(contentnum);// 한 페이지에 몇개 씩 게시글을 보여줄지 지정
        		paging.setCurrentblock(pagenum);//현재 페이지 블록이 몇번인지 현재 페이지 번호를 통해서 지정함
        		paging.setLastblock(paging.getTotalcount());//마지막 블록 번호를 전체 게시글 수를 통해 정함
        		
        		paging.prevnext(pagenum); //현재 페이지 번호로 화살표를 나타낼지 정함
        		paging.setStartPage(paging.getCurrentblock());//시작페이지를 페이지 블록번호로 정함
        		paging.setEndPage(paging.getLastblock(), paging.getCurrentblock());//마지막 페이지를 마지막 페이지 블록과 현재 페이지 블록번호로 정함
        	
        		
        		List<NoticeDTO> nList = new ArrayList(); 
        		int i = paging.getPagenum()*10;
        		int j = paging.getContentnum();
        	
        		hMap.put("pagenum",i);
        		hMap.put("contentnum", j);
        		
        		nList = noticeService.getNoticeSearchTitleList(hMap);
        		// 페이징 정보 전달.
        		
        		model.addAttribute("nList",nList);
        		model.addAttribute("paging",paging);
        		log.info(this.getClass() + ".NoticeList end!");
        	}
    	}
    	
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
			url="/noticeList.do?pagenum=1&contentnum=10"; //일단은 홈으로
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
		
		//카운트
		int updateCount=noticeService.updateNoticeCount(noticeNo);
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
			url="/noticeList.do?pagenum=1&contentnum=1"; //일단은 홈으로
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
