<%@page import="java.sql.*" %>
<% 
   
    String id=request.getParameter("id");  
    Connection conn;
    PreparedStatement pst;
    ResultSet rs;
    
    Class.forName("com.mysql.jdbc.Driver");
        
    conn =DriverManager.getConnection("jdbc:mysql://localhost/beachwalk_resort","root","");
    pst = conn.prepareStatement("delete from home_page_slider where id=?");
    
    pst.setString(1,id);
    pst.executeUpdate(); 
     %>
     <script>
         alert("page details delete Succsess!");
         window.location.replace("room_page_setting.jsp");
     </script>

