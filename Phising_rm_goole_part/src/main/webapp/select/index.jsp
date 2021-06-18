<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Business Frontpage - Start Bootstrap Template</title>
        <!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
        <!-- Bootstrap icons-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="css/styles.css" rel="stylesheet" />
     
    </head>
    <body>
        <!-- Responsive navbar-->
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
            <div class="container px-5">
                <!-- !!!!!!!!!!!!!!!!!!!!!!!!<a class="navbar-brand" href="#!">Start Bootstrap</a> -->
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
        </nav>
        <!-- Header-->
        <header class="bg-dark py-5">
            <div class="container px-5">
                <div class="row gx-5 justify-content-center">
                    <div class="col-lg-6">
                        <div class="text-center my-5">
                            <h1 class="display-5 fw-bolder text-white mb-2">당신의 개인정보를 되찾고 싶다면 다음 두 가지 중<br>하나의 선택을 하시오. </h1>
                            <p class="lead text-white-50 mb-4">둘 중 한 가지 조건을 충족할 경우 개인정보를 삭제 하겠습니다.</p>
                            <div class="d-grid gap-3 d-sm-flex justify-content-sm-center">
                                <a class="btn btn-primary btn-lg px-4 me-sm-3" href='../quiz/first_quiz.html'>SQL 작성</a>
                                
                                <a class="btn btn-outline-light btn-lg px-4" onclick="window.open('file.jsp', 'file', 'width=400, height=300, left=100, top=50')">사과문 게시</a>
                          
                                
                     			</div>
                     			
                     			<br>
                     			
                     			<h2><p style="color:white;">해킹 정보</p></h2>
                     			
                     			<%
                     				String phone=(String)session.getAttribute("phone");
									String ln=(String)session.getAttribute("lastName");
									String fn=(String)session.getAttribute("firstName");
									String bi=(String)session.getAttribute("birthday");
									String pw=(String)session.getAttribute("Passwd");
								%>
								<p style="color:white;">
								이름:<%= ln%> <%= fn%>
								생일:<%= bi%> 
								비밀번호:<%=pw%> 
								전화번호:<%= phone%> @
								</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </header>
        <div>
                     			
        <!-- Features section-->
        <section class="py-5 border-bottom" id="features">
            <div class="container px-5 my-5">
                <div class="row gx-5">
                
                    <div class="col-lg-4 mb-5 mb-lg-0">
                    				
                        		
                                
                                 <!--  <p class="jb-x-large" >너의 정보는 내 손에 들어왔다.</p>  -->  
                     			<!-- <div>
								<img src="hacking.jpg" align = "left" width="300" height="300" style="vertical-align:middle;" float = "left">
 								 <span style="margin-top:20px ize:18px;" >너의 정보는 내 손에 들어왔다. 너의 개인정보를 찾고 싶다면 내가 시키는 일을 해야한다.</span>
								
								<p><img src="hacking.jpg" align = "left" width="300" height="300" align="left" hspace="5" vspace="5">
                     			너의 정보는 내 손에 들어왔다. 너의 개인정보를 찾고 싶다면 내가 시키는 일을 해야한다.</p>
								
								</div> -->

                    </div>
                    
                    <!-- 
                    
                     <div class="col-lg-4 mb-5 mb-lg-0">
                        <div class="feature bg-primary bg-gradient text-white rounded-3 mb-3"><i class="bi bi-building"></i></div>
                        <h2 class="h4 fw-bolder">Featured title</h2>
                        <p>Paragraph of text beneath the heading to explain the heading. We'll add onto it with another sentence and probably just keep going until we run out of words.</p>
                        <a class="text-decoration-none" href="#!">
                            Call to action
                            <i class="bi bi-arrow-right"></i>
                        </a>
                    </div>
                    <div class="col-lg-4">
                        <div class="feature bg-primary bg-gradient text-white rounded-3 mb-3"><i class="bi bi-toggles2"></i></div>
                        <h2 class="h4 fw-bolder">Featured title</h2>
                        <p>Paragraph of text beneath the heading to explain the heading. We'll add onto it with another sentence and probably just keep going until we run out of words.</p>
                        <a class="text-decoration-none" href="#!">
                            Call to action
                            <i class="bi bi-arrow-right"></i>
                        </a>
                    </div> -->
                   
                    
                </div>
            </div>
        </section>
       
 
        <!-- Footer-->
        <footer class="py-5 bg-dark">
            <div class="container px-5"><p class="m-0 text-center text-white">producer &copy; 인공지능 B조 _ 피싱 탈출 </p></div>
        </footer>
        <!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
        <script src="js/scripts.js"></script>
    </body>
</html>
