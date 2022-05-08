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
                                            <div>
                                                <table class="responsive-table">
                                                    <thead>
                                                    <h5>New Customer Booking</h5>
                                                    <tr>
                                                        <th>Customer Name</th>
                                                        <!--<th>Customer Email</th> -->
                                                        <th>Customer Phone</th>
                                                        <th>Check-in Date</th>
                                                        <th>Check-out Date</th>
                                                        <th>Room Preference</th>
                                                        <th>Member of Guests</th>
                                                        <th>Action reprt</th>
                                                        <th>Action Edit</th>
                                                        <th>Action Delete</th>
                                                    </tr>
                                                    </thead>
                                                    <tbody>
                                                        <tr><%

                                                            Connection conn;
                                                            PreparedStatement pst;
                                                            ResultSet rs;

                                                            Class.forName("com.mysql.jdbc.Driver");

                                                            conn = DriverManager.getConnection("jdbc:mysql://localhost/beachwalk_resort", "root", "");

                                                            String query = "select * from cust_new_booking";
                                                            Statement st = conn.createStatement();

                                                            rs = st.executeQuery(query);

                                                            while (rs.next()) {

                                                                String id = rs.getString("id");
                                                            %>  


                                                            <td><%=rs.getString("your_name")%></td>
                                                            <!--<td><%=rs.getString("email")%></td> -->
                                                            <td><%=rs.getString("phone")%></td>
                                                            <td><%=rs.getString("a_date")%></td>
                                                            <td><%=rs.getString("d_date")%></td>
                                                            <td><%=rs.getString("d_time")%></td>
                                                            <td><%=rs.getString("num_gets")%></td>
                                                            <td><a href="new_room_report.jsp?id=<%=id%>" class="btn-small btn-light-indigo">Report</a></td>
                                                            <td><a href="salary_details_update.jsp?id=<%=id%>" class="btn-small btn-light-indigo">Update</a></td>
                                                            <td><a href="new_booking_details_delete.jsp?id=<%=id%>" class="btn-small btn-light-indigo">Delete</a></td>
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
                                <%@include file="footer.jsp" %> 
                                </body>
                                </html>