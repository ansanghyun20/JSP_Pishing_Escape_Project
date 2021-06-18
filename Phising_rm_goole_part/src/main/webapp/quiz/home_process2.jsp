<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>

<!DOCTYPE html>
<html>
<head>
<style>
body{
    background-image:url('bg2.jpg');
    }
</style>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>


<%@ include file="dbconn.jsp" %>
<%
		request.setCharacterEncoding("utf-8");

		String db_text = request.getParameter("input_db2");
		String db_first = request.getParameter("customSelect2");
		
		String db = db_first + " " + db_text + " where phone='"+session.getAttribute("phone")+"'";
		Statement stmt = null;
		out.println(db);
		
		if(session.getAttribute("firstName")!=null){
		try {
			String sql = db;
			stmt = conn.createStatement();
			stmt.executeUpdate(sql);
			
			%>
				<br>
				<br>
				<br>
				<br>
				<br>
				<br>
				<br>
				<br>
				<h3><p style="color:white;">　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　테이블 삽입 성공</p></h3>
			 <META http-equiv=refresh content="0;url=sucess.jsp">
			<% 
				
		} catch (SQLException ex) {
			
			%>
			<br>
				<br>
				<br>
				<br>
				<br>
				<br>
				<br>
				<br>
				<h3><p style="color:white;">　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　테이블 삽입 실패</p></h3>
			
			<%
			
		} finally {
			if (stmt != null)
				stmt.close();
			if (conn != null)
				conn.close();
		}
	}
	else{
		%>
				<br>
				<br>
				<br>
				<br>
				<br>
				<br>
				<br>
				<br>
				<h3><p style="color:white;">　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　비정상적인 접근</p></h3>
		<%
	}
		%>
		
		
		<%
		int count2=0;
		if(session.getAttribute("count2") != null){
			count2 = ((Integer)session.getAttribute("count2")).intValue();
		}
		else{
			count2 = 0;	
		}
		count2++;
		%>
		
		<br>
		<br>
		<br>
		<br>
		<p style="color:white;">　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　도전 횟수 : <%=count2%></p>

		<%
			session.setAttribute("count2", new Integer(count2));
		%>
		
		<%
			if(count2>2){
				session.invalidate();
				
				%>
				 <META http-equiv=refresh content="1;url=fail.jsp">
				
				<% 
			}
		%>
%>
	

</body>
</html>