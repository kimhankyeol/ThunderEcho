<%@page import="poly.util.CmmUtil"%>
<%@page import="poly.dto.NoticeDTO"%>
<%@page import="poly.dto.PagingDTO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% List<NoticeDTO> nList = (List<NoticeDTO>)request.getAttribute("nList"); %>
<% PagingDTO pDTO = (PagingDTO)request.getAttribute("paging"); %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="robots" content="all,follow">
<%@ include file="/WEB-INF/view/topCssJs.jsp" %>
<!-- 나중에 css 추가  -->
<link rel="stylesheet" href="/font-awesome-4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="/css/adminNoticeList.css">

<script>
function noticeDetail(i){
   location.href="/noticeDetail.do?noticeNo="+i;
}
//검색안함
function page(i){
   var pagenum = i;
   location.href="/adminNoticeList.do?pagenum="+pagenum+"&contentnum=10";
}
//검색함
   function page1(i) {
      var pagenum = i;
      var searchWd = "<%=pDTO.getSearchWord()%>";
   var selBox="<%=pDTO.getSelBox()%>";
   location.href="/adminNoticeList.do?pagenum="+pagenum+"&contentnum=10&searchWord="+searchWd+"&selBox="+selBox;
}
</script>


</head>
<body>
<%@ include file="/WEB-INF/view/top.jsp" %>
<div class="subTitleBar">
   <div class="subTitleIn">
      <h2><img src="/img/notice.jpg" alt="공지사항"></h2>
         <ul class="smap">
                 <li><a style="color:black;" href="/main.do"><i class="fa fa-home fa-fw"></i></a></li>
                 <li><i class="fa fa-chevron-right fa-fw"></i></li>
                 <li class="en"><i class="fa fa-info-circle fa-fw"></i>INFORMATION</li>
                 <li><i class="fa fa-chevron-right fa-fw"></i></li>
                 <li><a style="color:black" href="/noticeList.do?pagenum=1&contentnum=10"><i class="fa fa-list-alt fa-fw"></i> 공지사항</a></li>
             </ul>
   </div>
</div>
<div class="container" style="min-height: 80%;">
   <div class="width-100">
      <div class="searchWrap">
         <div class="searchInner">
               <form id="searBox">
                  <select class="selBox" name="selBox">
                     <option value="noticeTitle" selected="selected">제목</option>
                     <option value="noticeContent">내용</option>
                  </select>
                  <input type="hidden" name="pagenum" value="<%=pDTO.getPagenum()+1%>"/>
                  <input type="hidden" name="contentnum" value="<%=pDTO.getContentnum()%>"/>
                  <input type="text" name="searchWord" id="searchWord" maxlength="25"/>
               </form>
            </div>
            <div class="checkdel">
               <input type="button" id="findNotice" class="btn btn-success" value="검색">
               <input type="button" onclick="javascript:noticeDel()" style="float:right" class="btn btn-danger" value="삭제" />
               <label for="checkAll" class="btn btn-warning" style="float:right">전체 선택</label>
               <input type="checkbox" id="checkAll" style="display:none" />
               <input type="button" onclick="javascript:noticeInsert()" style="float:right" class="btn btn-info" value="등록" />
            </div>
      </div>
      
      <div class="noticeStyle3">
         <div><b><a style="color:black;">체크</a></b></div>
         <div><b><a style="color:black;">번호</a></b></div>
         <div><b><a style="color:black;">제목</a></b></div>
         <div><b><a style="color:black">작성자</a></b></div>
         <div><b><a style="color:black">작성일</a></b></div>
         <div><b><a style="color:black">조회수</a></b></div>
      </div>
   
   <%for (int i=0 ; i<nList.size(); i++){ %>
         <div class="noticeStyle4">
            <div><b><input type="checkbox" name="check" value="<%=nList.get(i).getNoticeNo()%>"/></b></div>
            <div><b><%=nList.get(i).getNoticeNo()%></b></div>
            <div onclick="javascript:noticeDetail('<%=nList.get(i).getNoticeNo()%>')"><b><%=nList.get(i).getNoticeTitle()%></b></div>
            <div>관리자</div>
            <div><%=nList.get(i).getRegDate()%></div>
            <div><%=nList.get(i).getReadCount()%>회</div>
         </div>
      <%} %>
      <%if(CmmUtil.nvl(pDTO.getSearchWord()).equals("")) {%>
      <div class="pager" style="clear:both"><%if(pDTO.isPrev()==true){%>
                     <a href="javascript:page(<%=pDTO.getStartPage()-1%>);">&laquo;</a> 
                  <%} %>
                  <%for(int i=pDTO.getStartPage();i<pDTO.getEndPage()+1;i++){ %>
                     <a class="chk"  href="javascript:page(<%=i%>);"><%=i %></a> 
                  <%} %>
                  <%if(pDTO.isNext()==true){%>
                     <a  href="javascript:page(<%=pDTO.getEndPage()+1%>);">&raquo;</a> 
                  <%} %></div>
      <%}else{ %>
      <div class="pager" style="clear:both"><%if(pDTO.isPrev()==true){%>
                     <a href="javascript:page1(<%=pDTO.getStartPage()-1%>);">&laquo;</a> 
                  <%} %>
                  <%for(int i=pDTO.getStartPage();i<pDTO.getEndPage()+1;i++){ %>
                     <a class="chk"  href="javascript:page1(<%=i%>);"><%=i %></a> 
                  <%} %>
                  <%if(pDTO.isNext()==true){%>
                     <a  href="javascript:page1(<%=pDTO.getEndPage()+1%>);">&raquo;</a> 
                  <%} %></div>
      
      <%} %>
   </div>
</div>

<!-- 페이저 부분 -->
<%@ include file="/WEB-INF/view/footer.jsp" %>
<%@ include file="/WEB-INF/view/bottomJs.jsp" %>
<script>
//페이징 숫자 색 바뀌는 부분
$(function(){
   $('.chk').each(function(){
      if($(this).text()==<%=pDTO.getPagenum()+1%>){
         $(this).addClass("on")
      }
   }) 
   
   
})
//검색 페이징 처리 구문
$(function(){
   $('#findNotice').click(function(){
      var searchWord=$('#searchWord').val();
      var selBox=$('select[name=selBox] option:selected').val();
      if(searchWord==""){
         alert("검색어를 입력해주세요")
         return false;
      }
      if(String(<%=pDTO.getPagenum()+1%>)=="1"){
         $('#searBox').submit();
      }else{
         location.href="/adminNoticeList.do?pagenum=1&contentnum=10&searchWord="+searchWord+"&selBox="+selBox;
      }
   })
   
})
// 체크박스 선택 해제
$(function(){
    //최상단 체크박스 클릭
    $("#checkAll").click(function(){
        //클릭되었으면
        if($("#checkAll").prop("checked")){
            //input태그의 name이 chk인 태그들을 찾아서 checked옵션을 true로 정의
            $("input[name=check]").prop("checked",true);
            //클릭이 안되있으면
        }else{
            //input태그의 name이 chk인 태그들을 찾아서 checked옵션을 false로 정의
            $("input[name=check]").prop("checked",false);
        }
    })
})
//선택 삭제
//발표 삭제
function noticeDel(){
   var noticeNoArr=[];
   $('input[name=check]:checked').each(function(index){
      noticeNoArr.push($(this).val());
   })
   
   if($('input[name=check]').is(':checked')==false){
      alert('삭제할 공지사항이 선택 되지 않았습니다.')
   }else{
      location.href="/notice/noticeDelete.do?noticeNoArr="+noticeNoArr;
   }
}
function noticeInsert(){
   location.href="/noticeInsertView.do"
}
</script>
</body>
</html>