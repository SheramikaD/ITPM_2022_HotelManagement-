    
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%

                                    Connection conn;
                                    PreparedStatement pst;
                                    ResultSet rs;

                                    Class.forName("com.mysql.jdbc.Driver");

                                    conn = DriverManager.getConnection("jdbc:mysql://localhost/beachwalk_resort", "root", "");
    %>  