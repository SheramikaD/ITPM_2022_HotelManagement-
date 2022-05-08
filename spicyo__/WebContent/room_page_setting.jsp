<%@page import="java.sql.*" %>

<%@page import="java.sql.*" %>
<%
    if (request.getParameter("submit") != null) {

        String img = request.getParameter("img");

        Connection conn;
        PreparedStatement pst;
        ResultSet rs;

        Class.forName("com.mysql.jdbc.Driver");

        conn = DriverManager.getConnection("jdbc:mysql://localhost/beachwalk_resort", "root", "");
        pst = conn.prepareStatement("insert into home_page_slider (img) values (?)");

        pst.setString(1, img);

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
                                        <h4 class="card-title">New Category form</h4>
                                        <form method="POST" action="#">

                                            <div class="col m6 s12 file-field input-field">
                                                <div class="btn float-right">
                                                    <span>Select image</span>
                                                    <input id="img" name="img" type="file">
                                                </div>
                                                <div class="file-path-wrapper">
                                                    <input class="file-path validate" id="img" name="img"  type="text">
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
                                        <!-- users view card data start -->
                                        <div class="card">
                                            <div class="card-content">
                                                <div class="row">
                                                    <div>
                                                        <table class="responsive-table">
                                                            <thead>
                                                            <h5>Home Page Slider Image </h5>
                                                            <tr>
                                                                <th>#</th>
                                                                <th>Image</th>
                                                                <th>Action Edit</th>
                                                                <th>Action Delete</th>

                                                            </tr>
                                                            </thead>
                                                            <tbody>
                                                                <tr>
                                                                    <%
                                                                        Connection conn;
                                                                        PreparedStatement pst;
                                                                        ResultSet rs;

                                                                        Class.forName("com.mysql.jdbc.Driver");

                                                                        conn = DriverManager.getConnection("jdbc:mysql://localhost/beachwalk_resort", "root", "");

                                                                        String query = "select * from home_page_slider";
                                                                        Statement st = conn.createStatement();

                                                                        rs = st.executeQuery(query);

                                                                        while (rs.next()) {

                                                                            String id = rs.getString("id");
                                                                    %>  






                                                                    <td><%=rs.getString("id")%></td>
                                                                    <td><%=rs.getString("img")%></td>
                                                                    <td><a href="page_slider_update.jsp?id=<%=id%>" class="btn-small btn-light-indigo">Update</a></td>
                                                                    <td><a href="page_slider_delete.jsp?id=<%=id%>" class="btn-small btn-light-indigo">Delete</a></td>
                                                                </tr>
                                                            </tbody>
                                                            <%
                                                                }

                                                            %>
                                                        </table>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- users view card data ends -->
                                    </div>
                                </div>
                            </div>

                        </div>

                        <!--card stats end--><!--end container-->
                        <%@include file="footer.jsp" %> 
                        </body>
                        </html>