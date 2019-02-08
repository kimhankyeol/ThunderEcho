package poly.dto;

public class EmailDTO {
//이메일로 전송항 내용을담는 DTO 입니다.
	public String user_nm ;
	public String mobile ;
	public String phone;
	public String email;
	public String subject;
	public String qa_msg;
	public String classfication;
	
	
	
	public String getClassfication() {
		return classfication;
	}
	public void setClassfication(String classfication) {
		this.classfication = classfication;
	}
	public String getUser_nm() {
		return user_nm;
	}
	public void setUser_nm(String user_nm) {
		this.user_nm = user_nm;
	}
	public String getMobile() {
		return mobile;
	}
	public void setMobile(String mobile) {
		this.mobile = mobile;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
		this.subject = subject;
	}
	public String getQa_msg() {
		return qa_msg;
	}
	public void setQa_msg(String qa_msg) {
		this.qa_msg = qa_msg;
	}
	
	
}
