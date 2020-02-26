<%-- 
    Document   : WelcomeHR
    Created on : 21 Jan, 2020, 11:38:44 AM
    Author     : Gowtham Raj
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            body{
                background-color: activecaption;
            }
            .autostyle2{
                color: red;
                font-size: 20px;
                text-align: center;
                font-weight: bolder;
            }
            #button{
                margin-left: 50px;
            }
            img{
                float: right;
            }
             .wel{
                font-family: fantasy;
                font-style: italic;
                font-weight: bolder;
                font-size: 200%;
                background-color: black;
                color: wheat;
            }
            .wel:hover{
                width: 250px;
                -webkit-transition: width 4s;
            }
        </style>
    </head>
    <body style="padding:20px 300px 100px 200px;color:black;font-weight: bolder">
        <form method="post" action="HRDetail.jsp" target="ContentFrame">
            <table>
                <tr class="autostyle2">
                    <td colspan="2"><div class="wel"><center>HR</center></div></td>
                    <td>
                        <img src="H:\CandidateProject\Images\login.png" alt="" width="100" height="100"/>
                    </td>
                </tr>
                <tr style="height:20px">
                    <td WIDTH="80%" colspan="4">
                    </td>
                </tr>
                <tr>
                <td style="width: 150px">Email ID:<span style="color: red">*</span></td>
                <td><input type="email" autocomplete="off" name="usermail" placeholder="Enter your email id" required></td>
                </tr>
                <tr style="height:15px">
                    <td WIDTH="80%" colspan="4">
                    </td>
                </tr>
                <tr><td style="width: 150px">Password:<span style="color: red">*</span></td>
                    <td><input type="password" name="password" pattern="[A-Za-z0-9]{8}" title="Eight Letter" placeholder="(Upper,Lower,Numbers)8Letters" required></td>
                </tr>
                <tr style="height:15px">
                    <td WIDTH="80%" colspan="4">
                    </td>
                </tr>
                <tr>
                        <td>
                            <button style="background-color: activecaption;color: blue" id="button" type="submit"><B>Submit</B></button>
                        </td>
                        <td>
                            <button style="background-color: activecaption;color: blue" type="reset"><B>Reset</b></button>
                        </td>
                    </tr>
            </table>
        </form>
        
    </body>
</html>
