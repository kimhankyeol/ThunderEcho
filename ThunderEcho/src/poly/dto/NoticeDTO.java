package poly.dto;

/**
 * @author 김한결
 * @version 1.0 공지사항 DTO
 */
public class NoticeDTO {

	 private String noticeNo; //기본키 시퀀스 
	 private String noticeTitle; // 공지사항 제목
	 private String noticeContent; // 공지사항 내용 / 스마트 에디터를 쓰기 떄문에 실질적으로 htmㅣ 코드가 들어감
	 private String userNo; //관리자 번호 1번
	 private String regDate; //등록일
	public String getNoticeNo() {
		return noticeNo;
	}
	public void setNoticeNo(String noticeNo) {
		this.noticeNo = noticeNo;
	}
	public String getNoticeTitle() {
		return noticeTitle;
	}
	public void setNoticeTitle(String noticeTitle) {
		this.noticeTitle = noticeTitle;
	}
	public String getNoticeContent() {
		return noticeContent;
	}
	public void setNoticeContent(String noticeContent) {
		this.noticeContent = noticeContent;
	}
	public String getUserNo() {
		return userNo;
	}
	public void setUserNo(String userNo) {
		this.userNo = userNo;
	}
	public String getRegDate() {
		return regDate;
	}
	public void setRegDate(String regDate) {
		this.regDate = regDate;
	}
	 
	 
	 

}
