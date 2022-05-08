<%@page import="java.sql.*" %>
<% 
   
    String id=request.getParameter("id");  
    Connection conn;
    PreparedStatement pst;
    ResultSet rs;
    
    Class.forName("com.mysql.jdbc.Driver");
        
    conn =DriverManager.getConnection("jdbc:mysql://localhost/beachwalk_resort","root","");
    pst = conn.prepareStatement("delete from insert_salry_details where id=?");
    
    pst.setString(1,id);
    pst.executeUpdate(); 
     %>
     <script>
         alert("Salary Details delete Succsess!");
         window.location.replace("salary_details.jsp");
     </script>
