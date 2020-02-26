<%-- 
    Document   : UpdateHR
    Created on : 22 Jan, 2020, 7:46:10 PM
    Author     : Gowtham Raj
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Welcome...</title>
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
    <body style="padding:20px 300px 100px 200px;color:black;font-weight: bolder">
        <form method="post" action="UpdateHR" target="ContentFrame">
            <table>
                <tr class="autostyle2">
                    <td colspan="2"><div class="wel"><center>Update Your Profile!</center></div></td>
                    <td>
                        <img src="H:\Final\Images\update.png" alt="" width="100" height="100"/>
                    </td>
                </tr>
                <tr style="height:20px">
                    <td WIDTH="80%" colspan="4">
                    </td>
                </tr>
                <tr>
                    <td>
                        Please Enter Your Email For Update:<span style="color: red">*</span>
                    </td>
                    <td>
                        <input type="email" autocomplete="off" name="usermail" placeholder="Enter your email id" required/>
                    </td>
                </tr>
                <tr>
                <td>Contact Number:<span style="color: red">*</span></td>
                <td><input type="tel" autocomplete="off" name="usertel" placeholder="Enter your phone number" required></td>
                </tr>
                <tr>
                <td>Company Name:<span style="color: red">*</span></td>
                <td><input type="text" autocomplete="off" autofocus name="companyname" placeholder="Update your company name" required/></td>
                </tr>
                <tr>
                <td>Location:<span style="color: red">*</span></td>
                    <td><select>
                            <option value="opt1">Select Your Location</option>
                            <option value="opt2">Bangalore</option>
                            <option value="opt3">Chennai</option>
                            <option value="opt4">Coimbatore</option>
                            <option value="opt5">Delhi</option>
                            <option value="opt6">Kolkata</option>
                            <option value="opt7">Mumbai</option>
                            <option value="opt8">Pune</option>
                        </select></td>
                </tr>
                <tr>
                        <td>
                            <input style="background-color: activecaption;color: blue" id="button" type="submit" value ="Submit">
                        </td>
                        <td>
                            <button style="background-color: activecaption;color: blue" type="reset"><B>Reset</b></button>
                        </td>
                    </tr>
            </table>
        </form>
    </body>
</html>
