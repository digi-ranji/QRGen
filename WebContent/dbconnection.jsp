
<%@page import="java.sql.*" %>




<%
String driverName = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://admin:RFMUUWZCQLXMLNYU@sl-aus-syd-1-portal.0.dblayer.com:19366/iKonnet2018";
// mysql://admin:RFMUUWZCQLXMLNYU@sl-aus-syd-1-portal.0.dblayer.com:19366/compose 
String dbName = "";
String userId = "";
String password = "";

try {
Class.forName(driverName);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}

Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
CallableStatement cstmt = null;

%>