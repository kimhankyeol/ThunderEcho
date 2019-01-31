package poly.util;

import java.util.HashMap;

import poly.dto.EmailDTO;

public class Email {

    private String subject;
    private String content;
    private String regdate;
    private String reciver;

    public String getReciver() {
        return reciver;
    }
    public void setReciver(String reciver) {
        this.reciver = reciver;
    }
    public String getSubject() {
        return subject;
    }
    public void setSubject(String subject) {
        this.subject = subject;
    }
    public String getContent() {
        return content;
    }
    public void setContent(String content) {
        this.content = content;
    }
    public String getRegdate() {
        return regdate;
    }
    public void setRegdate(String regdate) {
        this.regdate = regdate;
    }
    public String setContents(HashMap<String, Object> hMap){
    	String contents = "";
    	contents += "<html>";
    	contents += "<title>";
    	contents += "</title>";
    	contents += "<body>";
		contents += "<table width='696' align='center' border='0' cellspacing='0' cellpadding='0'>";
		contents += "<tr>";
		contents += "<td height='20' style='color: rgb(77, 77, 77); line-height: 14px; font-size: 12px;></td>";
		contents += "</tr>";
		contents += "<tr>";
		contents += "<td style='color: rgb(77, 77, 77); line-height: 14px; font-size: 12px;><img src='http://4christian.co.kr/public/img/common/t_logo.png'></td>";
		contents += "</tr>";
		contents += "<tr>";
		contents += "<td height='2' style='color: rgb(77, 77, 77); line-height: 14px; font-size: 12px;></td>";
		contents += "</tr>";
		contents += "<tr>";
		contents += "<td height='20' style='color: rgb(77, 77, 77); line-height: 14px; font-size: 12px;' bgcolor='#000000'></td>";
		contents += "</tr>";
		contents += "<tr>";
		contents += "<td height='20' style='color: rgb(77, 77, 77); line-height: 14px; font-size: 12px;></td>";
		contents += "</tr>";
		contents += "<tr>";
		contents += "<td height='35' style='color: rgb(77, 77, 77); line-height: 14px; font-size: 12px;'></td>";
		contents += "</tr>";
		contents += "<tr>";
		contents += "<td class='texts' style='color: rgb(97, 106, 116); line-height: 22px; padding-left: 10px; font-family: 돋움, Dotum; font-size: 12px;'><b>임시비밀번호 :</b>"+hMap.get("tmpPass").toString()+"</td>";
		contents += "</tr>";
		contents += "<tr>";
		contents += "<td height='30' style='color: rgb(77, 77, 77); line-height: 14px; font-size: 12px;'></td>";
		contents += "</tr>";
		contents += "<tr>";
		contents += "<td height='80' style='color: rgb(77, 77, 77); line-height: 14px; font-size: 12px;'></td>";
		contents += "</tr>";
		contents += "<tr>";
		contents += "<td height='2' style='color: rgb(77, 77, 77); line-height: 14px; font-size: 12px;></td>";
		contents += "</tr>";
		contents += "<tr>";
		contents += "<td height='20' style='color: rgb(77, 77, 77); line-height: 14px; font-size: 12px;' bgcolor='#000000'></td>";
		contents += "</tr>";
		contents += "<tr>";
		contents += "<td class='company' style='text-align: center; color: rgb(151, 158, 165); line-height: 22px; font-family: 돋움, Dotum; font-size: 11px;'>본 메일은 발신전용으로 회신을 통한 문의가 불가합니다.<br/>문의사항은 cg4491@naver.com 또는 문의게시판을 이용해 주시기 바랍니다.</td>";
		contents += "</tr>";
		contents += "<tr>";
		contents += "<td class='company' style='text-align: center; color: rgb(151, 158, 165); line-height: 22px; font-family: 돋움, Dotum; font-size: 11px;'>통신판매신고번호: 제2008-서울강남-1083호 / 서울시 우장산로  66길 대학본관 3층 (주)ThunderEco<br/>대표 김영운 / 대표전화 0000-0000 /</td>";
		contents += "</tr>";
		contents += "<table>";
    	contents += "</body>";
    	contents += "</html>";
    	return contents;
    };
    
    
    public String setContents(EmailDTO eDTO){
    	String contents = "";
    	contents += "<html>";
    	contents += "<title>";
    	contents += "</title>";
    	contents += "<body>";
		contents += "<table width='696' align='center' border='0' cellspacing='0' cellpadding='0'>";
		contents += "<tr>";
		contents += "<td height='20' style='color: rgb(77, 77, 77); line-height: 14px; font-size: 12px;></td>";
		contents += "</tr>";
		contents += "<tr>";
		contents += "<td style='color: rgb(77, 77, 77); line-height: 14px; font-size: 12px;><img src='WebContent/img/logo.png'></td>";
		contents += "</tr>";
		contents += "<tr>";
		contents += "<td height='2' style='color: rgb(77, 77, 77); line-height: 14px; font-size: 12px;></td>";
		contents += "</tr>";
		contents += "<tr>";
		contents += "<td height='20' style='color: rgb(77, 77, 77); line-height: 14px; font-size: 12px;' bgcolor='#000000'></td>";
		contents += "</tr>";
		contents += "<tr>";
		contents += "<td height='20' style='color: rgb(77, 77, 77); line-height: 14px; font-size: 12px;></td>";
		contents += "</tr>";
		contents += "<tr>";
		contents += "<td height='35' style='color: rgb(77, 77, 77); line-height: 14px; font-size: 12px;'></td>";
		contents += "</tr>";
		
		contents += "<tr>";
		contents += "<td class='texts' style='color: rgb(97, 106, 116); line-height: 22px; padding-left: 10px; font-family: 돋움, Dotum; font-size: 12px;'><b>작성자 :</b>"+eDTO.getUser_nm()+"</td>";
		contents += "</tr>";
		contents += "<tr>";
		contents += "<td class='texts' style='color: rgb(97, 106, 116); line-height: 22px; padding-left: 10px; font-family: 돋움, Dotum; font-size: 12px;'><b>휴대전화 :</b>"+eDTO.getMobile()+"</td>";
		contents += "</tr>";
		contents += "<tr>";
		contents += "<td class='texts' style='color: rgb(97, 106, 116); line-height: 22px; padding-left: 10px; font-family: 돋움, Dotum; font-size: 12px;'><b>전화번호 :</b>"+eDTO.getPhone()+"</td>";
		contents += "</tr>";
		contents += "<tr>";
		contents += "<td class='texts' style='color: rgb(97, 106, 116); line-height: 22px; padding-left: 10px; font-family: 돋움, Dotum; font-size: 12px;'><b>이메일 :</b>"+eDTO.getEmail()+"</td>";
		contents += "</tr>";
		contents += "<tr>";
		contents += "<td class='texts' style='color: rgb(97, 106, 116); line-height: 22px; padding-left: 10px; font-family: 돋움, Dotum; font-size: 12px;'><b>제목 :</b>"+eDTO.getSubject()+"</td>";
		contents += "</tr>";
		contents += "<tr>";
		contents += "<td class='texts' style='color: rgb(97, 106, 116); line-height: 22px; padding-left: 10px; font-family: 돋움, Dotum; font-size: 12px;'><b>내용 :</b>"+eDTO.getQa_msg()+"</td>";
		contents += "</tr>";
		
		contents += "<tr>";
		contents += "<td height='30' style='color: rgb(77, 77, 77); line-height: 14px; font-size: 12px;'></td>";
		contents += "</tr>";
		contents += "<tr>";
		contents += "<td height='80' style='color: rgb(77, 77, 77); line-height: 14px; font-size: 12px;'></td>";
		contents += "</tr>";
		contents += "<tr>";
		contents += "<td height='2' style='color: rgb(77, 77, 77); line-height: 14px; font-size: 12px;></td>";
		contents += "</tr>";
		contents += "<tr>";
		contents += "<td height='20' style='color: rgb(77, 77, 77); line-height: 14px; font-size: 12px;' bgcolor='#000000'></td>";
		contents += "</tr>";
		contents += "<tr>";
		contents += "<td class='company' style='text-align: center; color: rgb(151, 158, 165); line-height: 22px; font-family: 돋움, Dotum; font-size: 11px;'>본 메일은 발신전용으로 회신을 통한 문의가 불가합니다.<br/>문의사항은 cg4491@naver.com 또는 문의게시판을 이용해 주시기 바랍니다.</td>";
		contents += "</tr>";
		contents += "<tr>";
		contents += "<td class='company' style='text-align: center; color: rgb(151, 158, 165); line-height: 22px; font-family: 돋움, Dotum; font-size: 11px;'>통신판매신고번호: 제2008-서울강남-1083호 / 서울시 우장산로  66길 대학본관 3층 (주)ThunderEco<br/>대표 김영운 / 대표전화 0000-0000 /</td>";
		contents += "</tr>";
		contents += "<table>";
    	contents += "</body>";
    	contents += "</html>";
    	return contents;
    };
     
}