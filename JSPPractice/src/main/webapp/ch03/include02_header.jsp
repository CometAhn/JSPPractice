<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%!
	int pageCount = 0;

  void addCount() {
    pageCount++;
  }
%>
<%
addCount();
%>
<p>
	이 사이트 방문은
	<%=pageCount%>번째입입니다.
</p>