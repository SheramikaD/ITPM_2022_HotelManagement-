
<%@page import="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>

        <style>

            body {
                font-family: 'Open Sans', sans-serif;
                font-weight: 300;
                line-height: 1.42em;
                color:#A7A1AE;
                background-color:#1F2739;
            }

            h1 {
                font-size:3em; 
                font-weight: 300;
                line-height:1em;
                text-align: center;
                color: #4DC3FA;
            }

            h2 {
                font-size:1em; 
                font-weight: 300;
                text-align: center;
                display: block;
                line-height:1em;
                padding-bottom: 2em;
                color: #FB667A;
            }

            h2 a {
                font-weight: 700;
                text-transform: uppercase;
                color: #FB667A;
                text-decoration: none;
            }

            .blue { color: #185875; }
            .yellow { color: #FFF842; }

            .container th h1 {
                font-weight: bold;
                font-size: 1em;
                text-align: left;
                color: #185875;
            }

            .container td {
                font-weight: normal;
                font-size: 1em;
                -webkit-box-shadow: 0 2px 2px -2px #0E1119;
                -moz-box-shadow: 0 2px 2px -2px #0E1119;
                box-shadow: 0 2px 2px -2px #0E1119;
            }

            .container {
                text-align: left;
                overflow: hidden;
                width: 80%;
                margin: 0 auto;
                display: table;
                padding: 0 0 8em 0;
            }

            .container td, .container th {
                padding-bottom: 2%;
                padding-top: 2%;
                padding-left:2%;  
            }

            /* Background-color of the odd rows */
            .container tr:nth-child(odd) {
                background-color: #323C50;
            }

            /* Background-color of the even rows */
            .container tr:nth-child(even) {
                background-color: #2C3446;
            }

            .container th {
                background-color: #1F2739;
            }

            .container td:first-child { color: #FB667A; }

            .container tr:hover {
                background-color: #464A52;
                -webkit-box-shadow: 0 6px 6px -6px #0E1119;
                -moz-box-shadow: 0 6px 6px -6px #0E1119;
                box-shadow: 0 6px 6px -6px #0E1119;
            }

            .container td:hover {
                background-color: #FFF842;
                color: #403E10;
                font-weight: bold;

                box-shadow: #7F7C21 -1px 1px, #7F7C21 -2px 2px, #7F7C21 -3px 3px, #7F7C21 -4px 4px, #7F7C21 -5px 5px, #7F7C21 -6px 6px;
                transform: translate3d(6px, -6px, 0);

                transition-delay: 0s;
                transition-duration: 0.4s;
                transition-property: all;
                transition-timing-function: line;
            }

            @media (max-width: 800px) {
                .container td:nth-child(4),
                .container th:nth-child(4) { display: none; }
            }
        </style>
        <script>
            var element = document.getElementById("customers");
            var opt = {
                margin: 1,
                filename: 'myfile.pdf',
                image: {type: 'jpeg', quality: 0.98},
                html2canvas: {scale: 2},
                jsPDF: {unit: 'in', format: 'letter', orientation: 'portrait'}
            };

            // New Promise-based usage:
            html2pdf().from(element).set(opt).save();
        </script>
    </head>
    <body>
        <button><a class="button button3" onclick="print()">Get All Report</a></button>
        <table class="container">
            <thead>
                <tr>
                    <th>Customer Name</th>
                    <th>Customer Email</th> 
                    <th>Customer Phone</th>
                    <th>Check-in Date</th>
                    <th>Check-out Date</th>
                    <th>Room Preference</th>
                    <th>Member of Guests</th>
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

                        String query = "select * from cust_new_booking ";
                        Statement st = conn.createStatement();

                        rs = st.executeQuery(query);

                        while (rs.next()) {

                            String id = rs.getString("id");
                    %> 
                <tr>
                    <td><%=rs.getString("your_name")%></td>
                    <td><%=rs.getString("email")%> </td>
                    <td><%=rs.getString("phone")%></td>
                    <td><%=rs.getString("a_date")%></td>
                    <td><%=rs.getString("d_date")%></td>
                    <td><%=rs.getString("d_time")%></td>
                    <td><%=rs.getString("num_gets")%></td>
                </tr>

                <%
                    }

                %>




            </tbody>
        </table>
    </body>
</html>
