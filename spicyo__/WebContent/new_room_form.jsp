<%@page import="java.sql.*" %>
<%
    if (request.getParameter("submit") != null) {
       
        String img = request.getParameter("img");
        String room_type = request.getParameter("room_type");
        String price = request.getParameter("price");
        String description = request.getParameter("description");
      
        

        Connection conn;
        PreparedStatement pst;
        ResultSet rs;

        Class.forName("com.mysql.jdbc.Driver");

        conn = DriverManager.getConnection("jdbc:mysql://localhost/beachwalk_resort", "root", "");
        pst = conn.prepareStatement("insert into home_new_room_category (img,room_type,price,description) values (?,?,?,?)");

       
        pst.setString(1, img);
        pst.setString(2, room_type);
        pst.setString(3, price);
        pst.setString(4, description);
       
        pst.executeUpdate();
%>


<%
    }
%>
<!DOCTYPE html>
<html class="loading" lang="en" data-textdirection="ltr">
  <!-- BEGIN: Head-->
  <head>
        <%@include file="head.jsp" %>
    </head>
    <!-- END: Head-->
    <body class="vertical-layout page-header-light vertical-menu-collapsible vertical-dark-menu preload-transitions 2-columns   " data-open="click" data-menu="vertical-dark-menu" data-col="2-columns">

        <!-- BEGIN: Header-->
        <header class="page-topbar" id="header">
            <%@include file="header.jsp" %>
        </header>
        <!-- END: Header-->




        <!-- BEGIN: SideNav-->
        <%@include file="side_nav.jsp" %>

        <!-- END: SideNav-->

    <!-- BEGIN: Page Main-->
    <div id="main">
      <div class="row">
        <div class="col s12">
          <div class="container">
            <div class="section">
   <!--card stats start-->
   <!-- Form Advance -->
    <div class="col s12 m12 l12">
      <div id="Form-advance" class="card card card-default scrollspy">
        <div class="card-content">
          <h4 class="card-title">New Room form</h4>
          <form method="POST" action="#">
           
               <div class="col m6 s12 file-field input-field">
                <div class="btn float-right">
                  <span>Select image</span>
                  <input type="file" id="img" name="img">
                </div>
                <div class="file-path-wrapper">
                  <input class="file-path validate" id="img" name="img" type="text">
                </div>
              </div>
              <div class="input-field col m6 s12">
                <select  id="room_type" name="room_type">
                  <option value="" disabled="" selected="">Select Room Category</option>
                  <option value="type01">Type 01</option>
                  <option value="type02">Type 02</option>
                  </select>
                <label>Select Profile</label>
              </div>
              <div class="row">
              <div class="input-field col s12">
                <input id="price" name="price" type="text">
                <label for="price" name="price" >Price</label>
              </div>
            </div>
            <div class="row">
              <div class="input-field col s12">
                <input id="description" name="description" type="text">
                <label for="description" name="description">Description</label>
              </div>
            </div>
              
           <div class="row">

              
              <div class="row">
                <div class="input-field col s12">
                  <button class="btn cyan waves-effect waves-light left" type="submit" name="action">Cancel
                    <i class="material-icons left">backspace</i>
                  </button>
                
               
                  <button class="btn cyan waves-effect waves-light right" type="submit" name="submit">Submit
                    <i class="material-icons right">send</i>
                  </button>
                </div>
              </div>
            </div>

          </form>
        </div>
      </div>
    </div>
  </div>
   <!--card stats end--><!--end container-->
    <%@include file="footer.jsp" %> 
  </body>
</html>