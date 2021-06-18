<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="com.oreilly.servlet.*"%>
<%@ page import="com.oreilly.servlet.multipart.*"%>
<%@ page import="java.util.*"%>
<%@ page import="java.io.*"%>
<%@ page import="java.sql.*"%>
<%@ include file="../quiz/dbconn.jsp" %>
<%
	
	Statement stmt = null;
	MultipartRequest multi = 
	new MultipartRequest(request, "C:\\upload", 5 * 1024 * 1024, "utf-8",	new DefaultFileRenamePolicy());

	Enumeration params = multi.getParameterNames();

	while (params.hasMoreElements()) {
		String name = (String) params.nextElement();
		String value = multi.getParameter(name);
		File file = multi.getFile(name);
		out.println( "이름 = " + value + "<br>");
		
			try {
				String sql = "update member set upload = 1 where"+" phone='"+session.getAttribute("phone")+"'";
				stmt = conn.createStatement();
				
				stmt.executeUpdate(sql);
						
		
				out.println("성공");			
			} catch (SQLException ex) {
			
			}

			//stmt.executeUpdate("update member set upload = 1 where"+" phone='"+session.getAttribute("phone")+"'" );
	}//end while
	out.println("-----------------------------------<br>");
	

%>
<script>
   function reload() {
      opener.parent.location = "response.jsp";
      window.close();
   }
</script>

<form>
   <p>   <input type="button" value="다음으로 이동" onclick="onclick=reload()">
</form>