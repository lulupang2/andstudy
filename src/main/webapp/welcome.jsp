<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="conn.jsp" %>
<html>
<head>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/skeleton/2.0.4/skeleton.min.css"
          integrity="sha512-EZLkOqwILORob+p0BXZc+Vm3RgJBOe1Iq/0fiI7r/wJgzOFZMlsqTa29UEl6v6U6gsV4uIpsNZoV32YZqrCRCQ=="
          crossorigin="anonymous" referrerpolicy="no-referrer"/>
    <title>가입성공</title>

</head>
<body>

<table class="u-full-width">
    <thead>
    <tr>
        <th>아이디</th>
        <th>비밀번호</th>
        <th>이름</th>
        <th>전화번호</th>
        <th>취미</th>
        <th>성별</th>
        <th>가입인사</th>
    </tr>
    </thead>
    <tbody>

    <%
        request.setCharacterEncoding("UTF-8");

        PreparedStatement preparedStatement = null;
        ResultSet run = null;
        String sql = "SELECT * FROM members";
        preparedStatement = conn.prepareStatement(sql);
        run = preparedStatement.executeQuery();
        while (run.next()) {
            String id = run.getString("id");
            String passwd = run.getString("passwd");
            String name = run.getString("name");
            String tel = run.getString("tel");
            String hobby = run.getString("hobby");
            String gender = run.getString("gender");
            String comment = run.getString("comment");


    %>

    <tr>
        <td><%=id%>
        </td>
        <td><%=passwd%>
        </td>
        <td><%=name%>
        </td>
        <td><%=tel%>
        </td>
        <td><%=hobby%>
        </td>
        <td><%=gender%>
        </td>
        <td><%=comment%>
        </td>
    </tr>
    <%
        }
    %>
    </tbody>
</table>
<%
    run.close();
    preparedStatement.close();
    conn.close();

%>

</body>
</html>
