<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="conn.jsp" %>
<html>
<head>
    <title>db processing</title>
</head>
<body>
<%--아이디 비밀번호 이름 연락처 1(옵션) 2 3 취미(체크박스) 성별(라디오) 가입인사
--%>

<%
    request.setCharacterEncoding("utf-8");

    PreparedStatement preparedStatement = null;
    String id = request.getParameter("id");
    String passwd = request.getParameter("passwd");
    String name = request.getParameter("name");
    String tel1 = request.getParameter("tel1");
    String tel2 = request.getParameter("tel2");
    String tel3 = request.getParameter("tel3");
    String[] hobby = request.getParameterValues("hobby");
    String hobbies = new String();
    for (int i = 0; i < hobby.length; i++) {
        hobbies += hobby[i] + " / ";
    }
    String gender = request.getParameter("gender");
    String comment = request.getParameter("comment");
    try {


        String sql = "insert into members (id,passwd,name,tel,hobby,gender,comment) values (?,?,?,?,?,?,?)";
        preparedStatement = conn.prepareStatement(sql);
        preparedStatement.setString(1, id);
        preparedStatement.setString(2, passwd);
        preparedStatement.setString(3, name);
        preparedStatement.setString(4, tel1 + "-" + tel2 + "-" + tel3);
        preparedStatement.setString(5, hobbies);
        preparedStatement.setString(6, gender);
        preparedStatement.setString(7, comment);
        preparedStatement.executeUpdate();
    } catch (SQLException e) {
        e.getMessage();
    } finally {
        if (preparedStatement != null) preparedStatement.close();
        if (conn != null) conn.close();
        response.sendRedirect("welcome.jsp");
    }
%>

</body>
</html>
