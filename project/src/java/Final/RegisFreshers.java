/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Final;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Gowtham Raj
 */
public class RegisFreshers extends HttpServlet {
    Connection con;
    Statement stmt;
    String Name,DOB,Gender,EmailID,ContactNumber,Password,CurrentCity,YearofExperience,HighestQualificationDetails,Branch,PassedoutYear,Marks,collegename,universityname,HSCMarks,SSLCMarks,SkillsSets;
    String url = "jdbc:sqlserver://localhost:1433;user=sa;password=kgr2020;database=project;";
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet RegisFreshers</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet RegisFreshers at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try (PrintWriter out = response.getWriter()) {

            Name = request.getParameter("username");
            DOB = request.getParameter("date");
            Gender = request.getParameter("rd");
            EmailID = request.getParameter("usermail");
            ContactNumber = request.getParameter("usertel");
            Password = request.getParameter("password");
            CurrentCity = request.getParameter("rd");
            YearofExperience = request.getParameter("Exp");
            HighestQualificationDetails = request.getParameter("rd");
            Branch = request.getParameter("");
            PassedoutYear = request.getParameter("yop");
            Marks = request.getParameter("marks");
            collegename = request.getParameter("college name");
            universityname = request.getParameter("university name");
            HSCMarks = request.getParameter("marks12");
            SSLCMarks = request.getParameter("marks10");
            SkillsSets = request.getParameter("skills");
            try {
                Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
                con = DriverManager.getConnection(url);
                stmt = con.createStatement();
         String query = "insert into EmpDetails values('" + Name + "','" + DOB + "','" + Gender + "','" + EmailID + "','" + ContactNumber + "','" + Password + "','" + CurrentCity + "','" + YearofExperience + "','" + HighestQualificationDetails + "','" + PassedoutYear + "','" + Branch + "','" + Marks + "','" + collegename + "','" + universityname + "','" + HSCMarks + "','" + SSLCMarks + "','" + SkillsSets + "')";
         stmt.execute(query);
                out.println("Registered Successfully.");
                out.println("Please Login For Further Process");
            } catch (Exception e) {
                out.println(e);
            }
        }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
