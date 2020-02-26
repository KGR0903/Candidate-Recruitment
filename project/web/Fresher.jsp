<%-- 
    Document   : Fresher
    Created on : 21 Jan, 2020, 11:25:19 AM
    Author     : Gowtham Raj
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Welcome to...</title>
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
        <form method="post" action="RegisFreshers" target="ContentFrame">
            <table>
                <tr class="autostyle2">
                    <td colspan="2"><div class="wel"><center>Register</center></div></td>
                    <td>
                        <img src="H:\CandidateProject\Images\register.jpg" alt="" width="100" height="100"/>
                    </td>
                </tr>
                <tr style="height:20px">
                    <td WIDTH="80%" colspan="4">
                    </td>
                </tr>
                <tr>
                    <td> Name:<span style="color: red">*</span></td>
                    <td><input type="text" autocomplete="off" autofocus name="username" placeholder="Enter your name" required></td>
                </tr>
                <tr>
                    <td>DOB:<span style="color: red">*</span></td>
                    <td><input type="date" name="date" required></td>
                </tr>
                <tr>
                    <td>Gender:<span style="color: red">*</span></td>
                    <td>Male<input type="radio" name="rd" value="M">
                        Female<input type="radio" name="rd" value="F">
                    </td>
                </tr>
                <tr>
                <td>Email ID:<span style="color: red">*</span></td>
                <td><input type="email" autocomplete="off" name="usermail" placeholder="Enter your email id" required></td>
                </tr>
                <tr>
                <td>Contact Number:<span style="color: red">*</span></td>
                <td><input type="tel" autocomplete="off" name="usertel" placeholder="Enter your phone number" required></td>
                </tr>
                <tr><td>Password:<span style="color: red">*</span></td>
                    <td><input type="password" name="password" pattern="[A-Za-z0-9]{8}" title="Eight Letter" placeholder="(Upper,Lower,Numbers)8Letters" required></td>
                </tr>
                <tr>
                    <td>Current City:</td>
                    <td><select>
                            <option value="opt1">Select Your City</option>
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
                    <td>Year of Experience:<span style="color: red">*</span></td>
                    <td><input type="number" name="Exp" placeholder="Enter your year of Experience" required></td>
                </tr>
                <tr>
                    <td>Highest Qualification Details:<span style="color: red">*</span></td>
                    <td><select>
                            <option value="opt9">Select Your Degree</option>
                            <option value="opt10">BE/BTech</option>
                            <option value="opt11">BSc</option>
                            <option value="opt12">Diploma</option>
                            <option value="opt13">MBA/PGDM</option>
                            <option value="opt14">MCA</option>
                            <option value="opt15">ME/MTech</option>
                            <option value="opt16">MSc</option>
                            <option value="opt17">other</option>
                        </select></td>
                </tr>
                <tr>
                    <td>Branch:<span style="color: red">*</span></td>
                    <td><select>
                            <option value="opt18">Select Your Branch</option>
                            <optgroup label="BE/BTech">
                            <option value="opt19">Aeronautical/Aerospace Engineering</option>
                            <option value="opt20">Agricultural/Irrigation Engineering</option>
                            <option value="opt21">Automobile Engineering</option>
                            <option value="opt22">Chemical Engineering</option>
                            <option value="opt23">Civil Engineering</option>
                            <option value="opt24">Computer Science Engineering(CSE)</option>
                            <option value="opt25">Electronics and Communication Engineering(ECE)</option>    
                            <option value="opt26">Electrical and Electronics Engineering(EEE)</option>
                            <option value="opt27">Electronics and Instrumentation Engineering(E&I)</option>
                            <option value="opt28">Fashion/Design Technology</option>
                            <option value="opt29">Information Technology(IT)</option>
                            <option value="opt30">Mechanical Engineering</option>
                            <option value="opt31">other</option>
                            </optgroup>
                            <optgroup label="Bsc">
                            <option value="opt32">Computer Science</option>
                            <option value="opt33">other</option>
                            </optgroup>
                            <optgroup label="Diploma">
                            <option value="opt34">Automobile Engineering</option>
                            <option value="opt35">Chemical Engineering</option>
                            <option value="opt36">Civil Engineering</option>
                            <option value="opt37">Computer Science Engineering</option>
                            <option value="opt38">Electronics and Communication Engineering</option>    
                            <option value="opt39">Electrical and Electronics Engineering</option>
                            <option value="opt40">Electronics and Instrumentation Engineering</option>
                            <option value="opt41">Fashion/Design Technology</option>
                            <option value="opt42">Information Technology(IT)</option>
                            <option value="opt43">Mechanical Engineering</option>
                            <option value="opt44">other</option>
                            </optgroup>
                            <optgroup label="MBA/PGDM">
                            <option value="opt45">Administration</option>
                            <option value="opt46">Banking & Finance</option>
                            <option value="opt47">Executive</option>
                            <option value="opt48">General Management</option>
                            <option value="opt49">Human Resources</option>    
                            <option value="opt50">Information Technology</option>
                            <option value="opt51">Marketing</option>
                            <option value="opt52">other</option>
                           </optgroup>
                            <optgroup label="MCA">
                            <option value="opt53">Computer Science</option>
                            <option value="opt54">other</option>
                            <optgroup label="ME/MTech">
                            <option value="opt55">Civil Engineering</option>
                            <option value="opt56">Computer Science and Engineering</option>
                            <option value="opt57">Chemical Engineering</option>
                            <option value="opt58">Electrical Engineering</option>
                            <option value="opt59">VLSI</option>    
                            <option value="opt60">Mechanical Engineering</option>
                            <option value="opt61">Electronics and Communication Engineering </option>
                            <option value="opt62">other</option>
                           </optgroup>
                            <optgroup label="MSc">
                            <option value="opt63">Computer Science</option>
                            <option value="opt64">other</option>
                        </select></td>
                </tr>
                <tr>
                    <td>Passedout Year:<span style="color: red">*</span></td>
                    <td>
                        <input type="number" name="yop" min="1900" max="2099" step="1" value="" /></td>
                    </tr>
                    <tr>
                        <td>Marks:<span style="color: red">*</span></td>
                    <td>Percentage<input type="radio" name="rd1">
                        CGPA(0 to 10)<input type="radio" name="rd1">
                    </td>
                    <td><input type="number" name="marks" placeholder="Enter your percentage" required></td>
                    </tr>
                    <tr>
                        <td>Your College Details:<span style="color: red">*</span></td>
                        <td><input type="text" name="college name" placeholder="Institution Name" required></td>
                        <td><input type="text" name="university name" placeholder="University Name" required></td>
                    </tr>
                    <tr>
                        <td>Class 12th Marks:<span style="color: red">*</span></td>
                        <td>I Have<input type="radio" name="rd2">
                        I don't have<input type="radio" name="rd2">
                    </td>
                    <td><input type="number" name="marks12" placeholder="Enter your percentage" required></td>
                    </tr>
                    <tr>
                        <td>Class 10th Marks:<span style="color: red">*</span></td>
                        <td><input type="number" name="marks10" placeholder="Enter your percentage" required></td>
                    </tr>
                    <tr>
                        <td>Skills Sets:<span style="color: red">*</span></td>
                        <td><input type="text" name="skills" placeholder="Enter your skills" required></td>
                    </tr>
                    <tr style="height:15px">
                    <td WIDTH="80%" colspan="4">
                    </td>
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

<!-- skills storing 
 String[] skills   =request.getParameterValues("skills");
  String value="";
            for(p=0;p<skills.length;p++)
            {
                value += skills[p]+",";
            }
-->
