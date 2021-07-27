<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<jsp:include page="conn.jsp"/>
<head>
    <link rel="stylesheet" href="/res/style.css">
    <title>signup form using DB</title>
</head>
<body>
<form method="post" action="db_process.jsp" name="join">
    <h3>회원가입</h3>

    <label for="id">아이디 </label> <input name="id" id="id" type="text">
    <button>아이디 중복 확인</button>

    <label for="passwd">비밀번호 </label> <input name="passwd" id="passwd" type="password">

    <label for="name">이름 </label> <input name="name" id="name" type="text">

    <label for="tel">연락처 </label> <select name="tel1" id="tel">
    <option value="010">010</option>
    <option value="011">011</option>
    <option value="012">012</option></select>
    <span class="telgap">-</span>
    <input type="text" maxlength="4" name="tel2" id="tel2">
    <span class="telgap">-</span>
    <input type="text" maxlength="4" name="tel3" id="tel3">

    <label for="wrap">취미 </label>
    <div class="wrap" id="wrap">
        <div class="hb">축구</div>
        <input name="hobby" id="hobby" type="checkbox" value="축구">
        <div class="hb">야구</div>
        <input name="hobby" id="hobby2" type="checkbox" value="야구">
        <div class="hb">농구</div>
        <input name="hobby" id="hobby3" type="checkbox" value="농구">
        <div class="hb">배구</div>
        <input name="hobby" id="hobby4" type="checkbox" value="배구"></div>

    <label for="wrap2">성별 </label>
    <div class="wrap" id="wrap2">
        <div class="hb">남자</div>
        <input name="gender" id="gender" value="남자" type="radio">
        <div class="hb">여자</div>
        <input name="gender" id="gender" value="여자" type="radio"></div>

    <label for="comment">가입인사 </label>
    <textarea id="comment" name="comment" placeholder="가입인사"></textarea>

    <label for="btn"> </label>
    <button type="submit" id="btn">가입하기</button>
    <button type="reset" id="btn">되돌리기</button>
</form>
</body>
</html>
