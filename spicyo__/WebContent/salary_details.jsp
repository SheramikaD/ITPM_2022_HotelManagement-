<%@page import="java.sql.*" %>
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
                            <!-- users view start -->
                            <div class="section users-view">

                                <!-- users view card data start -->
                                <div class="card">
                                    <div class="card-content">
                                        <div class="row">
                                            <div >
                                                <table class="responsive-table">
                                                    <thead>
                                                    <h5>Employeee Salary Details</h5>
                                                    <tr>
                                                        <th>Employee Id</th>
                                                        <th>Employee Name</th>
                                                        <th>Designation</th>
                                                        <th>Basic Salary</th>
                                                        <th>EPF</th>
                                                        <th>Net Salary</th>
                                                        <th>Action Edit</th>
                                                        <th>Action Delete</th>
                                                        <th>Action Report</th>
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

                                    String query = "select * from insert_salry_details";
                                    Statement st = conn.createStatement();

                                    rs = st.executeQuery(query);

                                    while (rs.next()) {

                                        String id = rs.getString("id");
                                %> 
                                                            <td><%=rs.getString("employee_id")%></td>
                                                            <td><%=rs.getString("emplyee_name")%></td>
                                                            <td><%=rs.getString("employee_designation")%></td>
                                                            <td><%=rs.getString("emplyee_basic_salary")%></td>
                                                            <td><%=rs.getString("emplyee_etf")%></td>
                                                            
                                                            <td><% out.print((rs.getInt("emplyee_basic_salary")) + (rs.getInt("emplyee_basic_salary"))/30*2- (rs.getInt("emplyee_etf"))); %></td>
                                                            
                                                             
                                                            <td><a href="salary_details_update.jsp?id=<%=id%>" class="btn-small btn-light-indigo">Update</a></td>
                                                            <td><a href="salary_details_delete.jsp?id=<%=id%>" class="btn-small btn-light-indigo">Delete</a></td>
                                                            <td><a href="slary_report.jsp?id=<%=id%>" class="btn-small btn-light-indigo">report</a></td>
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
                                <!--card stats end--><!--end container-->
                                <%@include file="footer.jsp" %> 
                                </body>
                                </html>