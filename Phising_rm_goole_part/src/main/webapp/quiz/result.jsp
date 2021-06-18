<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<meta charset="UTF-8">
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>The Big Picture - Start Bootstrap Template</title>
        <!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="css/styles.css" rel="stylesheet" />
    </head>
    <body>
        <!-- Navigation-->
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-bottom">
            <div class="container px-4 px-lg-5">
                <a class="navbar-brand" href="#!"></a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
                <div class="collapse navbar-collapse" id="navbarResponsive">
                    <ul class="navbar-nav ml-auto">
                        <li class="nav-item active"><a class="nav-link" href="#!"></a></li>
                        <li class="nav-item"><a class="nav-link" href="#!"></a></li>
                        <li class="nav-item"><a class="nav-link" href="#!"></a></li>
                        <li class="nav-item"><a class="nav-link" href="#!"></a></li>
                    </ul>
                </div>
            </div>
        </nav>
        <!-- Page Content-->
        <section>
            <div class="container px-4 px-lg-5">
                <div class="row gx-4 gx-lg-5">
                    <div class="col-lg-6">
                        <h1 class="mt-5">
                        <p style="color:white;">
                        You Have Only Two Chances</p>
                        </h1>
                        </br>
                        
                        
                       
    				<form method="post" action="home_process2.jsp">
						<p style="color:white;">당신의 정보를 지우세요!</p>
						<p style="color:white;">where절은 이미 입력된 항목</p>
						<p style="color:white;">';'은 입력 불가</p>
						<select id="customSelect" name="customSelect2" onchange="SetSelectBox();">
    						<option value="DELETE">DELETE</option>
    						<option value="UPDATE">UPDATE</option>
    						<option value="SELECT">SELECT</option>
						</select>
						<input type="text" id="input_db2" name="input_db2"  style="width:300px;"/><input type="text" value="where ~ ;" disabled="true" style="width:100px;"/>
						<input type="submit" />
                      </form>
                        
                        </div>
                        
                    </div>
                </div>
            </div>
        </section>
        <!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
        <script src="js/scripts.js"></script>
    </body>
</html>
