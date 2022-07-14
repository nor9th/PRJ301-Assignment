/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

package controller;

import dal.LectureDBContext;
import dal.ScheduleDBContext;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.sql.Date;
import java.util.ArrayList;
import model.Instructor;
import model.Schedule;

/**
 *
 * @author lyxin
 */
public class ScheduleController extends HttpServlet {
   
    /** 
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        
    } 

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /** 
     * Handles the HTTP <code>GET</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        LectureDBContext ldb = new LectureDBContext();
        ArrayList<Instructor> ins = ldb.list();
        request.setAttribute("ins", ins);
        request.getRequestDispatcher("Schedule.jsp").forward(request, response);
        
//        String date = request.getParameter("date");
//        Date d_date = Date.valueOf(date);
//        ScheduleDBContext sdb = new ScheduleDBContext();
//        ArrayList<Schedule> sches = sdb.GetschedulebyDate(date);
//        request.setAttribute("d_date", d_date);
//        request.setAttribute("sches", sches);
//        request.getRequestDispatcher("Schedule.jsp").forward(request, response);
    } 

    /** 
     * Handles the HTTP <code>POST</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        
        int instructorID = Integer.parseInt(request.getParameter("instructorID"));
        
        ScheduleDBContext sdb = new ScheduleDBContext();
        ArrayList<Schedule> schedules = sdb.listSchedule(instructorID);
        request.setAttribute("schedules", schedules);
        
        LectureDBContext ldb = new LectureDBContext();
        ArrayList<Instructor> ins = ldb.list();
        request.setAttribute("ins", ins);
        request.setAttribute("instructorID", instructorID);
        request.getRequestDispatcher("Schedule.jsp").forward(request, response);
     
    }

    /** 
     * Returns a short description of the servlet.
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
