<%@page import="java.sql.*" %>
<%
    if (request.getParameter("submit") != null) {
        
        String id = request.getParameter("id");
        String emplyee_id = request.getParameter("emplyee_id");
        String emplyee_name = request.getParameter("emplyee_name");
        String employeeDesignation = request.getParameter("employeeDesignation");
        String date_from = request.getParameter("date_from");
        String date_to = request.getParameter("date_to");
        String shift_time = request.getParameter("shift_time");
        String shift_type = request.getParameter("shift_type");
        String reason = request.getParameter("reason");

        Connection conn;
        PreparedStatement pst;
        ResultSet rs;

        Class.forName("com.mysql.jdbc.Driver");

        conn = DriverManager.getConnection("jdbc:mysql://localhost/beachwalk_resort", "root", "");
        
       
        
        pst = conn.prepareStatement("update insert_leave_details set employee_id =?,emplyee_name =?,employee_designation =?,date_from =?,shift_time =?, date_to=? ,shift_type =?,reason =? where id =?");
        
        pst.setString(1, emplyee_id);
        pst.setString(2, emplyee_name);
        pst.setString(3, employeeDesignation);
        pst.setString(4, date_from);
        pst.setString(5, date_to);
        pst.setString(6, shift_time);
        pst.setString(7, shift_type);
        pst.setString(8, reason);
        pst.setString(9, id);

        pst.executeUpdate();
%>

<script>
    alert("Insert Leave Details");
    window.location.replace("leave_details.jsp");
</script>

<%    }
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
                                        <h4 class="card-title">Leave Details form</h4>
                                        <form method="POST" action="#" > 
                                            
                                                                                     <%
                                            Connection conn;
                                            PreparedStatement pst;
                                            ResultSet rs;

                                            Class.forName("com.mysql.jdbc.Driver");
                                            conn = DriverManager.getConnection("jdbc:mysql://localhost/beachwalk_resort", "root", "");

                                            String id = request.getParameter("id");
                                            pst = conn.prepareStatement("select * from insert_leave_details where id=?");
                                            pst.setString(1, id);
                                            rs = pst.executeQuery();

                                            while (rs.next()) {
                                        %>
                                            <div class="row">
                                                 <div class="input-field col m6 s12">
                                                    <input id="emplyee_id" value="<%= rs.getString("emplyee_id")%>" name="emplyee_id" type="text">
                                                    <label for="emplyee_id">Employee Id</label>
                                                </div>
                                                <div class="input-field col m6 s12">
                                                    <input id="emplyee_name" value="<%= rs.getString("emplyee_name")%>" name="emplyee_name" type="text">
                                                    <label for="emplyee_name">Employee Name</label>
                                                </div>
                                            </div>


                                            
                                                <div class="input-field col m6 s12">
                                                    <input id="employeeDesignation" value="<%= rs.getString("employeeDesignation")%>"  name="employeeDesignation" type="text">
                                                    <label for="employeeDesignation" name="employeeDesignation" >Employee Designation</label>
                                                </div>
                                                <div class="input-field col m6 s12">
                                                    <input type="text"  id="date_from" value="<%= rs.getString("date_from")%>" class="datepicker" name="date_from" >
                                                    <label for="date_from">Date From:</label>
                                                </div>
                                                <div class="input-field col m6 s12">
                                                    <input type="text" class="datepicker" value="<%= rs.getString("date_to")%>"  name="date_to" id="date_to">
                                                    <label for="date_to">Date To:</label>
                                                </div>
                                                <div class="input-field col m6 s12">
                                                    <select id="shift_time" value="<%= rs.getString("shift_time")%>"  name="shift_time">
                                                        <option value="" disabled="" selected="">Shift Time</option>
                                                        <option value="day shift">Day Shift</option>
                                                        <option value="afternoon">Afternoon Shift</option>
                                                    </select>
                                                    <label>Select Profile</label>
                                                </div>
                                                <div class="input-field col m6 s12">
                                                    <select id="shift_type" value="<%= rs.getString("shift_type")%>" name="shift_type">
                                                        <option value="" disabled="" selected="">Shift type</option>
                                                        <option value="full day">Full Day</option>
                                                        <option value="half Day">Half Day</option>
                                                    </select>
                                                    <label>Select Profile</label>
                                                </div>
                                                <div class="input-field col s12">
                                                    <textarea id="reason" value="<%= rs.getString("reason")%>" name="reason" class="materialize-textarea"></textarea>
                                                    <label for="reason">Reason</label>
                                                </div>
                                                <div class="row">
                                                    <%
                                        }
                                    %>
                                                    <div class="row">
                                                        <div class="input-field col s12">
                                                            <button class="btn cyan waves-effect waves-light right" type="submit" name="submit" onclick="myFunction()">Submit
                                                                <i class="material-icons right">send</i>
                                                            </button>
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
