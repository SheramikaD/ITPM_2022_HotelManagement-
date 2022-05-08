<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>

<!DOCTYPE html>
<html>
    <head>
        <style>
            #customers {
                font-family: Arial, Helvetica, sans-serif;
                border-collapse: collapse;
                width: 100%;
            }

            #customers td, #customers th {
                border: 1px solid #ddd;
                padding: 8px;
            }

            #customers tr:nth-child(even){background-color: #f2f2f2;}

            #customers tr:hover {background-color: #ddd;}

            #customers th {
                padding-top: 12px;
                padding-bottom: 12px;
                text-align: left;
                background-color: #4CAF50;
                color: white;
            }
        </style>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/html2pdf.js/0.9.3/html2pdf.bundle.min.js"></script>
    </head>
    <body>
        <button><a class="button button3" onclick="print()">Get All Report</a></button>
        <div id="list">
        <table id="customers" >
            <tr>
                <th>Food ID</th>
                <th>Name</th>
                <th>Price</th>
                
                
            </tr>

            <%

                Connection conn;
                PreparedStatement pst;
                ResultSet rs;

                Class.forName("com.mysql.jdbc.Driver");

                conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/spicyo", "root", "");

                String query = "select * from item";
                Statement st = conn.createStatement();

                rs = st.executeQuery(query);

                while (rs.next()) {

                    String id = rs.getString("id");
            %> 
            <tr>
                <td><%=rs.getString("item_id")%></td>
                <td><%=rs.getString("item_name")%></td>
                <td><%=rs.getString("price")%></td>
                
              



            </tr>

            <%
                }

            %>

        </table>
            </div>

        <script>
            var element = document.getElementById("list");
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
    </body>

</html>
