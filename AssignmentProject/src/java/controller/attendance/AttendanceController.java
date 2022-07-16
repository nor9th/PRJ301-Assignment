/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

package controller.attendance;

import dal.AttendanceDBContext;
import dal.ScheduleDBContext;
import dal.StudentDBContext;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.util.ArrayList;
import model.Attendance;
import model.Schedule;
import model.Student;

/**
 *
 * @author lyxin
 */
@WebServlet(name="AttendanceController", urlPatterns={"/attendance"})
public class AttendanceController extends HttpServlet {
   
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
        try (PrintWriter out = response.getWriter()) {
            
        }
    } 

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /** 
     * Handles the HTTP <code>GET</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void doGet_Check(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
        String scheduleID = request.getParameter("schedule");
        ScheduleDBContext scheduleDb = new ScheduleDBContext();
        Schedule schedule = scheduleDb.getScheduleByID(Integer.parseInt(scheduleID));
        String information = schedule.getClassname().getClassname()+ " - " + schedule.getSlot().getSlotname()+ " - " + schedule.getSubject().getSubjectname()+ " - " + schedule.getDate();
        request.setAttribute("information", information);
        StudentDBContext studentDb = new StudentDBContext();
        ArrayList<Student> listStudent = studentDb.getStudentsFromClass(schedule.getClassname().getClassid());
        request.setAttribute("listStudent", listStudent);
        request.getRequestDispatcher("Attendance.jsp").forward(request, response);
    }

    protected void doGet_Edit(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
        String schedule = request.getParameter("schedule");
        int scheduleID = Integer.parseInt(schedule);
        ScheduleDBContext scheduleDb = new ScheduleDBContext();
        Schedule scheduleGetFromDb = scheduleDb.getScheduleByID(scheduleID);
        String information = scheduleGetFromDb.getClassname().getClassname()+ " - " + scheduleGetFromDb.getSlot().getSlotname()+ " - " + scheduleGetFromDb.getSubject().getSubjectname()+ " - " + scheduleGetFromDb.getDate();
        request.setAttribute("information", information);
        StudentDBContext studentDb = new StudentDBContext();
        ArrayList<Student> listStudent = studentDb.getStudentsFromClass(scheduleGetFromDb.getClassname().getClassid());
        AttendanceDBContext aDb = new AttendanceDBContext();
        ArrayList<Attendance> listAttendence = aDb.getAttendanceByScheduleID(scheduleID);
        request.setAttribute("listAttendence", listAttendence);
        request.setAttribute("listStudent", listStudent);
        request.getRequestDispatcher("Attendance.jsp").forward(request, response);
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        if (request.getParameter("status").equals("check")) {
            doGet_Check(request, response);
            return;
        }
        if (request.getParameter("status").equals("edit")) {
            doGet_Edit(request, response);
            return;
        }
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void doPost_Insert(HttpServletRequest request, HttpServletResponse response, String scheduleID)
            throws ServletException, IOException {
        
        String[] studentCode = request.getParameterValues("student");
        Schedule schedule = new Schedule();
        schedule.setScheduleid(Integer.parseInt(scheduleID));
        String[] attendance = request.getParameterValues("attendence");
        Student[] students = new Student[studentCode.length];
        for (int i = 0; i < students.length; i++) {
            students[i] = new Student();
            students[i].setStudentcode(studentCode[i]);
        }
        AttendanceDBContext aDb = new AttendanceDBContext();
        Attendance[] attendences = new Attendance[attendance.length];
        for (int i = 0; i < attendences.length; i++) {
            attendences[i] = new Attendance();
            attendences[i].setSchedule(schedule);
            attendences[i].setStudent(students[i]);
            attendences[i].setAttendence(attendance[i]);
            aDb.insertAttendance(attendences[i]);
        }
        HttpSession session = request.getSession(false);
        session.setAttribute("notification", "Check successful");
        response.sendRedirect(request.getContextPath());
    }

    protected void doPost_Update(HttpServletRequest request, HttpServletResponse response, String scheduleID)
            throws ServletException, IOException {
        
        String[] studentCode = request.getParameterValues("student");
        Schedule schedule = new Schedule();
        schedule.setScheduleid(Integer.parseInt(scheduleID));
        String[] attendence = request.getParameterValues("attendence");
        Student[] students = new Student[studentCode.length];
        for (int i = 0; i < students.length; i++) {
            students[i] = new Student();
            students[i].setStudentcode(studentCode[i]);
        }
        AttendanceDBContext aDb = new AttendanceDBContext();
        Attendance[] attendences = new Attendance[attendence.length];
        for (int i = 0; i < attendences.length; i++) {
            attendences[i] = new Attendance();
            attendences[i].setSchedule(schedule);
            attendences[i].setStudent(students[i]);
            attendences[i].setAttendence(attendence[i]);
            aDb.updateAttendance(attendences[i]);
        }
        HttpSession session = request.getSession(false);
        session.setAttribute("notification", "Update successful");
        response.sendRedirect(request.getContextPath());
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String param = request.getParameter("param");
        String[] splitParam = param.split("&");
        String scheduleID = splitParam[0].substring(splitParam[0].indexOf("=") + 1);
        String status = splitParam[1].substring(splitParam[1].indexOf("=") + 1);
        if (status.equals("check")) {
            doPost_Insert(request, response, scheduleID);
            return;
        }
        if (status.equals("edit")) {
            doPost_Update(request, response, scheduleID);
            return;
        }

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
