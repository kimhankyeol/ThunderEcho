package poly.service;

import java.util.HashMap;
import java.util.List;

import poly.dto.NoticeDTO;
import poly.dto.PagingDTO;

public interface INoticeService {

	//공지사항 등록
	public int insertNotice(NoticeDTO nDTO) throws Exception;

	//공지사항 상세
	public NoticeDTO getNoticeDetail(NoticeDTO nDTO) throws Exception;

	//공지사항 수정
	public int updateNotice(NoticeDTO nDTO) throws Exception;

	
	//공지사항 리스트 페이징 
	//총 카운트
	public int getNoticeListTotalCount() throws Exception;
	public List<NoticeDTO> getNoticeList(HashMap<String, Integer> hMap) throws Exception;
	public int updateNoticeCount(String noticeNo) throws Exception;

	public NoticeDTO getAdminLogin(NoticeDTO nDTO) throws Exception;
	//내용검색 페이징
	public List<NoticeDTO> getNoticeSearchList(HashMap<String, Object> hMap) throws Exception;
	//내용 검색 총 개수
	public int getNoticeListSearchTotalCount(HashMap<String, Object> hMap) throws Exception;
	//제목 검색 페이징
	public List<NoticeDTO> getNoticeSearchTitleList(HashMap<String, Object> hMap) throws Exception;
	//제목 검색 총 개수
	public int getNoticeListSearchTitleCount(HashMap<String, Object> hMap) throws Exception;
	//공지사항 삭제
	public int deleteNotice(NoticeDTO nDTO) throws Exception;

	//1대1문의 등록
	public int insertQNA(NoticeDTO nDTO) throws Exception;
	
	//1대1 문의 리스트
	public List<NoticeDTO> getAdminQnaList(HashMap<String, Integer> hMap) throws Exception;

	//1대1 문의 총 개수
	public int getQnaListTotalCount() throws Exception;

	//1대1 문의 검색 개수
	public int getAdminQnaListSearchTotalCount(HashMap<String, Object> hMap) throws Exception;
	
	//1대1 문의 검색 리스트
	public List<NoticeDTO> getAdminQnaSearchList(HashMap<String, Object> hMap) throws Exception;

	//1대1 문의 상세보기
	public NoticeDTO getQnaDetail(NoticeDTO nDTO) throws Exception;

	//1대1 문의 답변 등록
	public int insertAnswer(NoticeDTO nDTO) throws Exception;

	//1대1 문의 검색 후 리스트
	public List<NoticeDTO> getCsConfirmNoticeList(HashMap<String, Object> hMap) throws Exception;

	//1대1 문의 사용자 검색 개수
	public int getCsConfirmListTotalCount(HashMap<String, Object> hMap) throws Exception;


}
