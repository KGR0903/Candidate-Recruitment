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

public class RegisHRs extends HttpServlet {
     Connection con;
     Statement stmt;
     String Name,EmailID,ContactNumber,Password,CompanyName,Location;
     String url = "jdbc:sqlserver://localhost:1433;user=sa;password=kgr2020;database=project;";
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet RegisHRs</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet RegisHRs at " + request.getContextPath() + "</h1>");
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

            Name = request.getParameter("username");
            EmailID = request.getParameter("usermail");
            ContactNumber = request.getParameter("usertel");
            Password = request.getParameter("password");
            CompanyName = request.getParameter("companyname");
            Location = request.getParameter("opt1");
            try {
                Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
                con = DriverManager.getConnection(url);
                stmt = con.createStatement();
         String query = "insert into HRDetails values('" + Name + "','" + EmailID + "','" + ContactNumber + "','" + Password + "','" + CompanyName + "','" + Location + "')";
         stmt.execute(query);
                out.println("Registered Successfully.");
                out.println("Please Login For Further Process");
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
