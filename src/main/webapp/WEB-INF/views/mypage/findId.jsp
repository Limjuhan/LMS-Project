<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>	
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Find ID</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            font-family: 'Noto Sans KR', sans-serif;
            background-color: #f8f9fa;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }
        .card {
            border: none;
            box-shadow: 0 2px 4px rgba(0,0,0,0.1);
            width: 100%;
            max-width: 400px;
            padding: 20px;
        }
        .btn-custom {
            background-color: #007bff;
            color: #ffffff;
            border: none;
        }
        .btn-custom:hover {
            background-color: #0056b3;
        }
        .btn-link-custom {
            color: #007bff;
            text-decoration: none;
        }
        .btn-link-custom:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
<c:if test="${msg==null}">
<div class="card">
        <h4 class="text-center mb-4">아이디 찾기</h4>
        <form action="findIdProcess" method="post">      
        <div class="mb-3">
            <label for="name" class="form-label">이름</label>
            <input type="text" class="form-control" id="name" name="name" placeholder="이름 입력">
        </div>
        <div class="mb-3">
            <label for="email" class="form-label">이메일</label>
            <input type="email" class="form-control" id="email" name="email"  placeholder="이메일 입력">
        </div>
        <button class="btn btn-custom w-100 mb-3">아이디 찾기</button>
        <div class="text-center">
            <a href="javascript:c()" class="btn-link-custom">로그인 화면으로 돌아가기</a>
        </div>
        </form>
    </div>
</c:if>
<c:if test="${msg != null}">
<div class="card">
    <div>
        <h2 style="text-align: center">${msg}</h2>
        <h2 style="text-align: center; color: green" >${detailMsg}</h2>     
        <button class="btn btn-custom w-100 mb-3" onclick="c()">홈화면으로 돌아가기</button>
    </div>
</div>

</c:if>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
    <script type="text/javascript">
    	function c(){
                window.close();
                /*const msg = document.querySelector("#findId").value;
                opener.document.f.id.value = msg;*/
            
    	}
    </script>
</body>
</html>