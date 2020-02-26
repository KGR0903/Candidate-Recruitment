
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
           
            ResultSet rs=st.executeQuery("select * from EmpDetails where EmailID='"+Email+"' ");             
            
            if(rs.next())
            { 
            if(rs.getString(6).equals(Password))
                {
                   %>
                    <br>
                    <%
                        out.println("Name:"+rs.getString(1));%>
                        <br>
                        
                            <%
                                out.println("E-Mail:"+rs.getString(4));%>
                                <br>
                                <%
                                out.println("Contact Number:"+rs.getString(5));%>
                                <br>
                                <%                }
                else
                {
                    out.println("invalid password");
                }
            }
       %>
       
       <a href="UpdateEmp.jsp" target="ContentFrame"><span style="color: red;font-weight: bolder">Update Your Profile</span></a>
       <h1>Job Openings!!!</h1>
       <table>
           <tr style="height: 50px">
               <td style="width: 20px">TCS</td>
               <td>-</td>
               <td>Junior Software Trainee</td>
               <td>-</td>
               <td>No.Of Vacancies</td>
               <td>-</td>
               <td>20</td>
               <td><a href="TCSjunior.html" target="ContentFrame"><span style="color: red;font-weight: bolder">Apply Now</span></a></td>
           </tr>
           <tr style="height: 50px">
               <td style="width: 20px">TCS</td>
               <td>-</td>
               <td>Senior Software Trainee(Exp 5-7yrs)</td>
               <td>-</td>
               <td>No.Of Vacancies</td>
               <td>-</td>
               <td>10</td>
               <td><a href="TCSsenior.html" target="ContentFrame"><span style="color: red;font-weight: bolder">Apply Now</span></a></td>
           </tr>
           <tr style="height: 50px">
               <td style="width: 20px">CTS</td>
               <td>-</td>
               <td>Junior Software Trainee</td>
               <td>-</td>
               <td>No.Of Vacancies</td>
               <td>-</td>
               <td>30</td>
               <td><a href="CTSjunior.html" target="ContentFrame"><span style="color: red;font-weight: bolder">Apply Now</span></a></td>
           </tr>
           <tr style="height: 50px">
               <td style="width: 20px">CTS</td>
               <td>-</td>
               <td>Senior Software Trainee(Exp 3-5yrs)</td>
               <td>-</td>
               <td>No.Of Vacancies</td>
               <td>-</td>
               <td>8</td>
               <td><a href="CTSsenior.html" target="ContentFrame"><span style="color: red;font-weight: bolder">Apply Now</span></a></td>
           </tr>
           <tr style="height: 50px">
               <td style="width: 20px">Wipro</td>
               <td>-</td>
               <td>Junior Software Trainee</td>
               <td>-</td>
               <td>No.Of Vacancies</td>
               <td>-</td>
               <td>40</td>
               <td><a href="Wipro.html" target="ContentFrame"><span style="color: red;font-weight: bolder">Apply Now</span></a></td>
           </tr>
           <tr style="height: 50px">
               <td style="width: 20px">Infosys</td>
               <td>-</td>
               <td>Junior Software Trainee</td>
               <td>-</td>
               <td>No.Of Vacancies</td>
               <td>-</td>
               <td>25</td>
               <td><a href="Infosys.html" target="ContentFrame"><span style="color: red;font-weight: bolder">Apply Now</span></a></td>
           </tr>
       </table>
                      
    </body>
</html>

