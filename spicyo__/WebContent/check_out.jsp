
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
                                                    <h5>Custemer Chck-Out Details</h5>
                                                    <tr>
                                                        <th>#</th>
                                                        <th>Category</th>
                                                        <th>Rooms</th>
                                                        <th>Status</th>
                                                        <th>Action</th>
                                                    </tr>
                                                    </thead>
                                                    <tbody>
                                                        <tr>
                                                            <td>No</td>
                                                            <td>Yes</td>
                                                            <td>Articles</td>
                                                            <td>No</td>
                                                            <td><a href="user-profile-page.html" class="btn-small btn-light-indigo">More Deatils</a></td>
                                                        </tr>
                                                    </tbody>
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