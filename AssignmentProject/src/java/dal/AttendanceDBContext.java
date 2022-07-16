/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Attendance;
import model.Schedule;
import model.Student;

/**
 *
 * @author lyxin
 */
public class AttendanceDBContext extends DBContext {

    public void insertAttendance(Attendance x) {
        String sql = "insert into Attendence (ScheduleID, [StudentCode], Attendence) values (?, ?, ?)";
        try {
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setInt(1, x.getSchedule().getScheduleid());
            statement.setString(2, x.getStudent().getStudentcode());
            statement.setString(3, x.getAttendence());
            int result = statement.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(AttendanceDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public void updateAttendance(Attendance x) {
        String sql = "update Attendence\n"
                + "set Attendence = ?\n"
                + "where [StudentCode] = ? and ScheduleID = ?";
        try {
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, x.getAttendence());
            statement.setString(2, x.getStudent().getStudentcode());
            statement.setInt(3, x.getSchedule().getScheduleid());
            int result = statement.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(AttendanceDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public ArrayList<Attendance> getAttendanceByScheduleID(int scheduleID) {
        ArrayList<Attendance> listAttendence = new ArrayList<>();
        String sql = "select a.*, st.FullName, st.Image\n"
                + "from Attendance a join Student st \n"
                + "on a.[StudentCode] = st.StudentCode\n"
                + "where a.ScheduleID  = ?";
        try {
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setInt(1, scheduleID);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                Attendance x = new Attendance();
                x.setAttendanceid(rs.getInt("ID"));
                
                Schedule schedule = new Schedule();
                schedule.setScheduleid(rs.getInt("ScheduleID"));
                x.setSchedule(schedule);
                
                Student student = new Student();
                student.setStudentcode(rs.getString("StudentCode"));
                student.setFullname(rs.getString("FullName"));
                student.setImage(rs.getString("Image"));
                x.setStudent(student);
                x.setAttendence(rs.getString("Attendance"));
                listAttendence.add(x);
            }
        } catch (SQLException ex) {
            Logger.getLogger(AttendanceDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        return listAttendence;
    }

    public static void main(String[] args) {
        AttendanceDBContext db = new AttendanceDBContext();
        ArrayList<Attendance> attend = db.getAttendanceByScheduleID(7);
        for (Attendance attendance : attend) {
            System.out.println(attendance);
        }
    }
}
