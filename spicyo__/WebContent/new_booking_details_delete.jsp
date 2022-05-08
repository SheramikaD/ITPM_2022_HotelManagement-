<%@page import="java.sql.*" %>
<% 
   
    String id=request.getParameter("id");  
    Connection conn;
    PreparedStatement pst;
    ResultSet rs;
    
    Class.forName("com.mysql.jdbc.Driver");
        
    conn =DriverManager.getConnection("jdbc:mysql://localhost/beachwalk_resort","root","");
    pst = conn.prepareStatement("delete from cust_new_booking where id=?");
    
    pst.setString(1,id);
    pst.executeUpdate(); 
     %>
     <script>
         alert("Bokking Details delete Succsess!");
         window.location.replace("new_booking_details.jsp");
     </script>
