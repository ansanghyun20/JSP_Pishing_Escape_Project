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
		String db_text = request.getParameter("input_db1");
		String db_first = request.getParameter("customSelect1"); 
		String updateset = db_first + " " + db_text + " where phone='"+session.getAttribute("phone")+"'";
		Statement stmt = null;
		String[] parse = updateset.split("'");
		
		if(session.getAttribute("firstName")!=null){
		try {
			String sql = updateset;
			stmt = conn.createStatement();
			
			if(parse[0].equals("UPDATE member set birthday=")){
				if(parse[1].equals("1999-09-09")){
					stmt.executeUpdate(sql);
					
			%><br>
				<br>
				<br>
				<br>
				<br>
				<br>
				<br>
				<br>
				<h3><p style="color:white;">　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　테이블 삽입 성공</p></h3>
				<form method="post" name="send_result" id="send_result" action="result.jsp">
					　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　<input type="submit" value="다음페이지"/>
					<% 
					session.removeAttribute("count1");
					%>
				</form>
			<%	
				}
				else{
					out.println("1999-09-09으로 입력하세요.");
					%>
					<br>
					<br>
					<br>
					<br>
					<br>
					<br>
					<br>
					<br>
					<h3><p style="color:white;">　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　1999-09-09으로 입력하세요.</p></h3>
					<form method="post" action="second_quiz.html">
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
				<h3><p style="color:white;">　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　태어난 날짜를 바꾸세요</p></h3>
				<form method="post" action="second_quiz.html">
				　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　<input type="submit" value="돌아가기"/>
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
			<form method="post" name="send_result" id="send_result" action="second_quiz.jsp">
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
			<%
		}
	%>




	<%
		int count1=0;
		if(session.getAttribute("count1") != null){
			count1 = ((Integer)session.getAttribute("count1")).intValue();
		}
		else{
			count1 = 0;	
		}
		count1++;
		%>
		
		<br>
		<br>
		<br>
		<br>
		<p style="color:white;">　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　도전 횟수 : <%=count1%></p>

		<%
			session.setAttribute("count1", new Integer(count1));
		%>
		
		<%
			if(count1>2){
				session.invalidate();
				
				%>
				 <META http-equiv=refresh content="0;url=fail.jsp">
				
				<% 
			}
		%>
</body>
</html>