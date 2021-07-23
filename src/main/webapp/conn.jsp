<%@ page import="java.sql.*" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    Connection conn = null;

    String url = "jdbc:mysql://testest2.cf:3`306/jspbook";
    String user = "tester";
    String password = "1";

    Class.forName("com.mysql.jdbc.Driver");
    conn = DriverManager.getConnection(url, user, password);

%>