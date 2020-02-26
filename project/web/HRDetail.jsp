
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>login jsp</title>
        <style>
            .wel{
                font-family: fantasy;
                font-style: italic;
                font-weight: bolder;
                font-size: 250%;
                background-color: black;
                color: wheat;
            }
            .wel:hover{
                width: 400px;
                -webkit-transition: width 4s;
            }
        </style>
    </head>
    <body>
        <div class="wel"><center>Welcome!</center></div>
        
        <%@page import="java.sql.*"%>
        <%@page import="javax.sql.*"%>
        <h3><span style="color: red;font-weight: bolder">Your Details:</span></h3>
       
        <%
            
            String Email=request.getParameter("usermail");
            
            String Password=request.getParameter("password");
            
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            Connection con=DriverManager.getConnection("jdbc:sqlserver://localhost:1433;user=sa;password=kgr2020;databasename=project");
            Statement st=con.createStatement();
           
            ResultSet rs=st.executeQuery("select * from HRDetails where EmailID='"+Email+"' ");             
            
            if(rs.next())
            { 
            if(rs.getString(4).equals(Password))
                {
                    %>
                    <br>
                    <%
                        out.println("Name:"+rs.getString(1));%>
                        <br>
                        
                            <%
                                out.println("E-Mail:"+rs.getString(2));%>
                                <br>
                                <%
                                out.println("Contact Number:"+rs.getString(3));%>
                                <br>
                                <%                }
                else
                {
                    out.println("invalid password");
                }
            }
       %>
       <a href="UpdateHR.jsp" target="ContentFrame"><span style="color: red;font-weight: bolder">Update Your Profile</span></a>
       <h1>Search Employees</h1>
       <form action="Search.jsp" target="ContentFrame">
           <table>
               <tr>
                   <td>Search By Skills</td>
                   <td>
                       <input type="text" name="skills" placeholder="Enter the Skill" required />
                   </td>
              </tr>
              <tr>
                  <td>
                            <button style="background-color: activecaption;color: blue" id="button" type="Search"><B>Submit</B></button>
                        </td>
              </tr>
           </table>
       </form>
    </body>
</html>

