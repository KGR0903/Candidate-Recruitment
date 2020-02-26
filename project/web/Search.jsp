<%-- 
    Document   : Search
    Created on : 21 Jan, 2020, 11:49:21 PM
    Author     : Gowtham Raj
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%@page import="java.sql.*"%>
        <%@page import="javax.sql.*"%>
        <h3><span style="color: red;font-weight: bolder">Employee Details:</span></h3>
       
        <%
            
            String Skill=request.getParameter("skills");
            
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            Connection con=DriverManager.getConnection("jdbc:sqlserver://localhost:1433;user=sa;password=kgr2020;databasename=project");
            Statement st=con.createStatement();
           
            ResultSet rs=st.executeQuery("select * from EmpDetails where SkillsSets='"+Skill+"'");             
            
            if(rs.next())
            { 
            if(rs.getString(17).equals(Skill))
                {
                    %>
                    <br>
                    <%
                        out.println("Name:"+rs.getString(1));%>
                        <br>
                        <%
                        out.println("DOB:"+rs.getString(2));%>
                        <br>
                        <%
                        out.println("Gender:"+rs.getString(3));%>
                        <br>                            <%
                                out.println("E-Mail:"+rs.getString(4));%>
                                <br>
                                <%
                                out.println("Contact Number:"+rs.getString(5));%>
                                <br>
                                <%
                        out.println("Year Of Experience"+rs.getString(8));%>
                        <br>
                        <%
                        out.println("Highest Qualification:"+rs.getString(9));%>
                        <br>
                        <%
                        out.println("Branch:"+rs.getString(10));%>
                        <br>
                        <%
                        out.println("YOP:"+rs.getString(11));%>
                        <br>
                        <%
                        out.println("Degree Percentage/CGPA:"+rs.getString(12));%>
                        <br>
                        <%
                        out.println("HSC Percentage:"+rs.getString(15));%>
                        <br>
                        <%
                        out.println("SSLC Percentage:"+rs.getString(16));%>
                        <br>
                        
                                <%                }
                else
                {
                    out.println("invalid password");
                }
            }
       %>
       <table>
           <tr>
           <td style="width: 300px"></td>
           <td style="width: 90px">
    <a href="DeleteEmp.jsp" target="ContentFrame"><span style="color: red;font-weight: bolder">Delete</span></a>
       </td>
       <td>
    <a href="InterviewCall.html" target="ContentFrame"><span style="color: red;font-weight: bolder">Call For Interview</span></a>
        </td>
        </tr>
       </table>
       </body>
</html>
