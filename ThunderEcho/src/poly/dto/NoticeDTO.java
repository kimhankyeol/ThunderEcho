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
	 private String readCount; //조회수
	 //관리자 로그인 위한 변수
	 private String id;
	 private String password;
	 private String userName;

	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getReadCount() {
		return readCount;
	}
	public void setReadCount(String readCount) {
		this.readCount = readCount;
	}
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
