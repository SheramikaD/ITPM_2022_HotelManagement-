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
                            <!--card stats start-->
                            <div id="card-stats" class="pt-0">
                                <div class="row">
                                    <div class="col s12 m6 l6 xl3">
                                        <a href="salary_form.jsp">
                                            <div class="card gradient-45deg-light-blue-cyan gradient-shadow min-height-100 white-text animate fadeLeft">
                                                <div class="padding-4">
                                                    <div class="row">
                                                        <div class="col s7 m7">
                                                            <i class="material-icons background-round mt-5">add</i>
                                                            <p>Salary Form</p>
                                                        </div>
                                                        <div class="col s5 m5 right-align">

                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </a>
                                    </div>
                                    <div class="col s12 m6 l6 xl3">
                                        <a href="salary_details.jsp">
                                            <div class="card gradient-45deg-red-pink gradient-shadow min-height-100 white-text animate fadeLeft">
                                                <div class="padding-4">
                                                    <div class="row">
                                                        <div class="col s7 m7">
                                                            <i class="material-icons background-round mt-5">info</i>
                                                            <p>Salary Details</p>
                                                        </div>
                                                        <div class="col s5 m5 right-align">

                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </a>
                                    </div>
                                    <div class="col s12 m6 l6 xl3">
                                        <a href="#">
                                            <div class="card gradient-45deg-amber-amber gradient-shadow min-height-100 white-text animate fadeRight">
                                                <div class="padding-4">
                                                    <div class="row">
                                                        <div class="col s7 m7">
                                                            <i class="material-icons background-round mt-5"><span class="material-icons">
                                                                    summarize
                                                                </span></i>

                                                            <p>Salary Report</p>
                                                        </div>
                                                        <div class="col s5 m5 right-align">

                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </a>
                                    </div>
                                    <div class="col s12 m6 l6 xl3">
                                        <a href="leave_form.jsp">
                                            <div class="card gradient-45deg-green-teal gradient-shadow min-height-100 white-text animate fadeRight">
                                                <div class="padding-4">
                                                    <div class="row">
                                                        <div class="col s7 m7">
                                                            <i class="material-icons background-round mt-5"><span class="material-icons">
                                                                    format_align_left
                                                                </span></i>

                                                            <p>Leave Form</p>
                                                        </div>
                                                        <div class="col s5 m5 right-align">

                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </a>
                                    </div>
                                    <div class="col s12 m6 l6 xl3">
                                        <a href="leave_details.jsp">
                                            <div class="card gradient-45deg-green-teal gradient-shadow min-height-100 white-text animate fadeRight">
                                                <div class="padding-4">
                                                    <div class="row">
                                                        <div class="col s7 m7">
                                                            <i class="material-icons background-round mt-5"><span class="material-icons">
                                                                    info
                                                                </span></i>

                                                            <p>Leave Details</p>
                                                        </div>
                                                        <div class="col s5 m5 right-align">

                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </a>
                                    </div>
                                </div>
                            </div>
                            <!--card stats end--><!--end container-->
                            <%@include file="footer.jsp" %> 
                            </body>
                            </html>