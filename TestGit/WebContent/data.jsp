<%@page import="java.util.Random"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEnc oding="UTF-8"%>

	<%
		int count = Integer.parseInt(request.getParameter("count"));
		Random r = new Random();
		int a = r.nextInt(10); //0부터 9사이의 값
	%>
	<%= a %>