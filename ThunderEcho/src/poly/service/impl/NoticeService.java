package poly.service.impl;

import java.util.HashMap;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import poly.dto.NoticeDTO;
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
	//공지사항 리스트
	@Override
	public List<NoticeDTO> getNoticeList() throws Exception {
		// TODO Auto-generated method stub
		return noticeMapper.getNoticeList();
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
	

}
