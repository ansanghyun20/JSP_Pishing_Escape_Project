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
		String db_text = request.getParameter("input_db");
		String db_first = request.getParameter("customSelect"); 
		String updateset = db_first + " " + db_text.toLowerCase() + " where phone='"+session.getAttribute("phone")+"'";
		Statement stmt = null;
		String[] parse = updateset.split("'");
		
	if(session.getAttribute("firstName")!=null){
		try {
			String sql = updateset;
			stmt = conn.createStatement();
			
			if(parse[0].equals("UPDATE member set lastname=")){
				if(parse[1].equals("곿")){
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
				<form method="post" name="send_result" id="send_result" action="second_quiz.html">
				　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　<input type="submit" value="다음페이지"/>
					<% 
					session.removeAttribute("count");
					%>
				</form>
				<%	
					
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
					<h3><p style="color:white;">　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　곿으로 입력하세요</p></h3>
					<form method="post" action="first_quiz.html">
					　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　<input type="submit" value="돌아가기"/>
					</form>
					<%
				}
			}else{
				
				%>
				<br>
				<br>
				<br>
				<br>
				<br>
				<br>
				<br>
				<br>
					<h3><p style="color:white;">　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　성을 바꾸세요</p></h3>
					<form method="post" action="first_quiz.html">
					　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　<input type="submit" value="돌아가기" onClick="javascript:move()"/>
					</form>
				<%
			}
			
			
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
			<form method="post"  action="first_quiz.jsp">
				　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　<input type="submit"/>
			</form>
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
		<h3><p style="color:white;">　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　비정상적인 접근</p></h3>
		　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　<input type="submit"/>
		<%
	}
	%>
	
	
	
	
		
	
	
		<%
		int count=0;
		if(session.getAttribute("count") != null){
			count = ((Integer)session.getAttribute("count")).intValue();
		}
		else{
			count = 0;	
		}
		count++;
		%>
		<br>
		<br>
		<br>
		<br>
		<p style="color:white;">　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　도전 횟수 : <%=count%></p>
		

		<%
			session.setAttribute("count", new Integer(count));
		%>
		
		<%
			if(count>2){
				session.invalidate();
				%>
				 <META http-equiv=refresh content="0;url=fail.jsp">
				<% 
			}
		%>
</body>
</html>