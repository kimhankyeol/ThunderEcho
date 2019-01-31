package poly.persistance.mapper;


import java.util.HashMap;
import java.util.List;

import config.Mapper;
import poly.dto.NoticeDTO;
import poly.dto.PagingDTO;

@Mapper("NoticeMapper")
public interface NoticeMapper {

	//공지사항 등록
	public int insertNotice(NoticeDTO nDTO) throws Exception;


	//공지사항 상세
	public NoticeDTO getNoticeDetail(NoticeDTO nDTO) throws Exception;
	
	//공지사항 수정
	public int updateNotice(NoticeDTO nDTO) throws Exception;
	
	//공지사항 페이징

	public int getNoticeListTotalCount() throws Exception;

	public List<NoticeDTO> getNoticeList(HashMap<String, Integer> hMap) throws Exception;

	//조회수
	public int updateNoticeCount(String noticeNo) throws Exception;

	//관리자 로그인
	public NoticeDTO getAdminLogin(NoticeDTO nDTO) throws Exception;
	
	//검색 페이징
	public List<NoticeDTO> getNoticeSearchList(HashMap<String, Object> hMap) throws Exception;

	//내용 검색 총개수
	public int getNoticeSearchTotalCount(HashMap<String, Object> hMap) throws Exception;

	//제목 검색 총 개수
	public int getNoticeListSearchTitleCount(HashMap<String, Object> hMap) throws Exception;


	public List<NoticeDTO> getNoticeSearchTitleList(HashMap<String, Object> hMap) throws Exception;


	//공지사항 삭제
	public int deleteNotice(NoticeDTO nDTO) throws Exception;

	
	
	
}
