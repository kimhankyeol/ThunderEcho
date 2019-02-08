package poly.service.impl;

import java.util.HashMap;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import poly.dto.NoticeDTO;
import poly.dto.PagingDTO;
import poly.persistance.mapper.NoticeMapper;
import poly.service.INoticeService;

@Service("NoticeService")
public class NoticeService implements INoticeService{
	
	@Resource(name="NoticeMapper")
	private NoticeMapper noticeMapper;

	//공지사항 등록
	@Override
	public int insertNotice(NoticeDTO nDTO) throws Exception {
		// TODO Auto-generated method stub
		return noticeMapper.insertNotice(nDTO);
	}

	//공지사항 상세
	@Override
	public NoticeDTO getNoticeDetail(NoticeDTO nDTO) throws Exception {
		// TODO Auto-generated method stub
		return noticeMapper.getNoticeDetail(nDTO);
	}
	//공지사항 수정
	@Override
	public int updateNotice(NoticeDTO nDTO) throws Exception {
		// TODO Auto-generated method stub
		return noticeMapper.updateNotice(nDTO);
	}
	
	//공지사항 페이징
		
	@Override
	public int getNoticeListTotalCount() throws Exception {
		return noticeMapper.getNoticeListTotalCount();
	}

	@Override
	public List<NoticeDTO> getNoticeList(HashMap<String, Integer> hMap) throws Exception {
		// TODO Auto-generated method stub
		return noticeMapper.getNoticeList(hMap);
	}

	@Override
	public int updateNoticeCount(String noticeNo) throws Exception {
		// TODO Auto-generated method stub
		return noticeMapper.updateNoticeCount(noticeNo);
	}

	@Override
	public NoticeDTO getAdminLogin(NoticeDTO nDTO) throws Exception {
		// TODO Auto-generated method stub
		return noticeMapper.getAdminLogin(nDTO);
	}
	//검색 페이징
	@Override
	public List<NoticeDTO> getNoticeSearchList(HashMap<String, Object> hMap) throws Exception {
		// TODO Auto-generated method stub
		return noticeMapper.getNoticeSearchList(hMap);
	}
	//내용 검색 총 개수
	@Override
	public int getNoticeListSearchTotalCount(HashMap<String, Object> hMap) throws Exception {
		// TODO Auto-generated method stub
		return noticeMapper.getNoticeSearchTotalCount(hMap);
	}
	//제목 검색 페이징
	@Override
	public List<NoticeDTO> getNoticeSearchTitleList(HashMap<String, Object> hMap) throws Exception {
		// TODO Auto-generated method stub
		System.out.println("제목검색 페이징 서비스  searchWord"+hMap.get("searchWord").toString());
		return noticeMapper.getNoticeSearchTitleList(hMap);
	}
	//제목 검색 총 개수
	@Override
	public int getNoticeListSearchTitleCount(HashMap<String, Object> hMap) throws Exception {
		// TODO Auto-generated method stub
		System.out.println("제목검색 페이징 서비스 수  searchWord"+hMap.get("searchWord"));
		return noticeMapper.getNoticeListSearchTitleCount(hMap);
	}

	@Override
	public int deleteNotice(NoticeDTO nDTO) throws Exception {
		// TODO Auto-generated method stub
		return noticeMapper.deleteNotice(nDTO);
	}

	//1대1문의
	@Override
	public int insertQNA(NoticeDTO nDTO) throws Exception {
		// TODO Auto-generated method stub
		return noticeMapper.insertQNA(nDTO);
	}
	
	//1대1문의 리스트
	@Override
	public List<NoticeDTO> getAdminQnaList(HashMap<String, Integer> hMap) throws Exception {
		// TODO Auto-generated method stub
		return noticeMapper.getAdminQnaList(hMap);
	}
	
	//1대1 문의 전체 총 개수
	@Override
	public int getQnaListTotalCount() throws Exception {
		// TODO Auto-generated method stub
		return noticeMapper.getQnaListTotalCount();
	}
	//1대1 문의 검색개수
	@Override
	public int getAdminQnaListSearchTotalCount(HashMap<String, Object> hMap) throws Exception {
		// TODO Auto-generated method stub
		return noticeMapper.getAdminQnaListSearchTotalCount(hMap);
	}
	//1대1 검색 문의 리스트
	@Override
	public List<NoticeDTO> getAdminQnaSearchList(HashMap<String, Object> hMap) throws Exception {
		// TODO Auto-generated method stub
		return noticeMapper. getAdminQnaSearchList(hMap);
	}
	
	//1대1 문의 상세보기
	@Override
	public NoticeDTO getQnaDetail(NoticeDTO nDTO) throws Exception {
		// TODO Auto-generated method stub
		return noticeMapper.getQnaDetail(nDTO);
	}
	
	//1대1 문의 답변 등록
	@Override
	public int insertAnswer(NoticeDTO nDTO) throws Exception {
		// TODO Auto-generated method stub
		return noticeMapper.insertAnswer(nDTO);
	}

	@Override
	public List<NoticeDTO> getCsConfirmNoticeList(HashMap<String, Object> hMap) throws Exception {
		// TODO Auto-generated method stub
		return noticeMapper.getCsConfirmNoticeList(hMap);
	}
	//1대1 문의 사용자 질문 개수
	@Override
	public int getCsConfirmListTotalCount(HashMap<String, Object> hMap) throws Exception {
		// TODO Auto-generated method stub
		return noticeMapper.getCsConfirmListTotalCount(hMap);
	}

	
	
}
