/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package classes;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author shobhit pc
 */
@WebServlet(name = "EceServlet", urlPatterns = {"/EceServlet"})
public class EceServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 3.2 Final//EN\">");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet EceServlet</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet EceServlet at " + request.getContextPath() + "</h1>");
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
         String name=request.getParameter("name");
        String reg_no=request.getParameter("registration_no");
        String project_name=request.getParameter("projectname");
        String org=request.getParameter("organization");
       
        String presentation=request.getParameter("presentation");
        int presentation_marks=Integer.parseInt(presentation);
        String future_aspect=request.getParameter("future aspect");
        int futureaspect_marks=Integer.parseInt(future_aspect);
        
        String report_format=request.getParameter("report_format");
        int report_from=Integer.parseInt(report_format);
        String learn_outcome=request.getParameter("learning_outcome");
        int learn_marks=Integer.parseInt(learn_outcome);
        int total=presentation_marks+futureaspect_marks+report_from+learn_marks;
        String tot=Integer.toString(total);
        System.out.println(total);
        String comment=request.getParameter("comments");
         try
        {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/project_evaluator","root","user");
            System.out.println("Connection Done...");
            PreparedStatement ps=con.prepareStatement("insert into ece_information values(?,?,?,?,?,?,?,?,?,?)");
            ps.setString(1, name);
            ps.setString(2, reg_no);
            ps.setString(3,project_name);
            ps.setString(4, org);
            ps.setString(5, presentation);
            ps.setString(6,future_aspect);
           ps.setString(7, report_format);
            ps.setString(8, learn_outcome);
            ps.setString(9, comment);
            ps.setString(10, tot);
            int c=ps.executeUpdate();
            System.out.println(c);
            con.close();
            
        }
        catch(Exception e)
        {
            System.out.println("Error is caught");
        }
        RequestDispatcher rd=request.getRequestDispatcher("Faculty Home.jsp");
rd.forward(request, response);
        
        
        
        
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
        processRequest(request, response);
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
