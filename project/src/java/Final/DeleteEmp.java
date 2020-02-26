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
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Gowtham Raj
 */
public class DeleteEmp extends HttpServlet {
    
    Connection con;
    Statement stmt;
    String Email;
    String url = "jdbc:sqlserver://localhost:1433;user=sa;password=kgr2020;database=project;";

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet DeleteEmp</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet DeleteEmp at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try (PrintWriter out = response.getWriter()) {
            Email = request.getParameter("usermail");
            try {
                Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
                con = DriverManager.getConnection(url);
                stmt = con.createStatement();
         String query = "delete from EmpDetails where EmailID='"+Email+"'";
         stmt.execute(query);
                out.println("Deleted Successfully.");
                out.println("Intimation was send to His/Her Email.");
            } catch (Exception e) {
                out.println(e);
            }
        }
    }
    @Override
    public String getServletInfo() {
        return "Short description";
    }

}
