

<%@page import="java.sql.*" %>
<%
    if (request.getParameter("submit") != null) {
        
        String id = request.getParameter("id");
        String employee_id = request.getParameter("employee_id");
        String emplyee_name = request.getParameter("emplyee_name");
        String employee_designation = request.getParameter("employee_designation");
        String emplyee_etf = request.getParameter("emplyee_etf");
        String emplyee_basic_salary = request.getParameter("emplyee_basic_salary");
        

        Connection conn;
        PreparedStatement pst;
        ResultSet rs;

        Class.forName("com.mysql.jdbc.Driver");

        conn = DriverManager.getConnection("jdbc:mysql://localhost/beachwalk_resort", "root", "");
        
        pst = conn.prepareStatement("update insert_salry_details set employee_id =?,emplyee_name =?,employee_designation =?,emplyee_etf =?,emplyee_basic_salary =? where id =?");
       
        pst.setString(1, employee_id);
        pst.setString(2, emplyee_name);
        pst.setString(3, employee_designation);
        pst.setString(4, emplyee_etf);
        pst.setString(5, emplyee_basic_salary);
        pst.setString(6, id);
        
        pst.executeUpdate();
%>

<script>
    alert("Update Salary Details");
    window.location.replace("salary_details.jsp");
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
                                        <h4 class="card-title">Salary Details Update</h4>
                                        
                                                                                <%
                                            Connection conn;
                                            PreparedStatement pst;
                                            ResultSet rs;

                                            Class.forName("com.mysql.jdbc.Driver");
                                            conn = DriverManager.getConnection("jdbc:mysql://localhost/beachwalk_resort", "root", "");

                                            String id = request.getParameter("id");
                                            pst = conn.prepareStatement("select * from insert_salry_details where id=?");
                                            pst.setString(1, id);
                                            rs = pst.executeQuery();

                                            while (rs.next()) {
                                        %>
                                        <form method="POST" action="#">
                                            <div class="row">
                                                <div class="input-field col m6 s12">
                                                    <input id="employee_id" value="<%= rs.getString("employee_id")%>" name="employee_id" type="text">
                                                    <label for="employee_id" >Employee Id</label>
                                                </div>
                                                <div class="input-field col m6 s12">
                                                    <input id="emplyee_name" value="<%= rs.getString("emplyee_name")%>" name="emplyee_name" type="text">
                                                    <label for="emplyee_name">Employee Name</label>
                                                </div>
                                            </div>


                                            <div class="row">
                                                <div class="input-field col m6 s12">
                                                    <input id="employee_designation" value="<%= rs.getString("employee_designation")%>" name="employee_designation" type="text">
                                                    <label for="employee_designation">Employee Designation</label>
                                                </div>
                                                <div class="input-field col m6 s12">
                                                    <input id="emplyee_basic_salary" value="<%= rs.getString("emplyee_basic_salary")%>"  name="emplyee_basic_salary" type="text">
                                                    <label for="emplyee_basic_salary">Employee Basic Salary Amount</label>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="input-field col m6 s12">
                                                    <input id="emplyee_etf" value="<%= rs.getString("emplyee_etf")%>"  name="emplyee_etf" type="text">
                                                    <label for="emplyee_etf">Employee  EPF Amount</label>
                                                </div>
                                              
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
