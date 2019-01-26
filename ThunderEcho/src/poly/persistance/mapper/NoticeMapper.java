package poly.persistance.mapper;


import java.util.List;

import config.Mapper;
import poly.dto.NoticeDTO;

@Mapper("NoticeMapper")
public interface NoticeMapper {

	//공지사항 등록
	public int insertNotice(NoticeDTO nDTO) throws Exception;

	//공지사항 리스트
	public List<NoticeDTO> getNoticeList() throws Exception;

	//공지사항 상세
	public NoticeDTO getNoticeDetail(NoticeDTO nDTO) throws Exception;
	
	//공지사항 수정
	public int updateNotice(NoticeDTO nDTO) throws Exception;
	
	
	
	
}
