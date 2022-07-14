/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Schedule;
import model.Class;
import model.Instructor;
import model.Slot;
import model.Subject;

/**
 *
 * @author lyxin
 */
public class ScheduleDBContext extends DBContext {

    public ArrayList<Schedule> GetschedulebyDate(String date) {
        ArrayList<Schedule> sche = new ArrayList<>();
        try {
            String sql = "SELECT *, sub.SubjectName, c.ClassName, sl.SlotName, sl.[Time]\n"
                    + "FROM ((Schedule s JOIN [Subject] sub ON s.SubjectID = sub.SubjectID) \n"
                    + "JOIN Class c ON s.ClassID = c.ClassID ) JOIN Slot sl ON s.SlotID = sl.SlotID\n"
                    + "WHERE s.Date = ?";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setString(1, date);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                Schedule s = new Schedule();
                s.setScheduleid(rs.getInt("ID"));

                Subject sub = new Subject();
                sub.setSubjectname(rs.getString("SubjectName"));
                s.setSubject(sub);

                Class c = new Class();
                c.setClassname(rs.getString("classname"));
                s.setClassname(c);

                Slot slot = new Slot();
                slot.setSlotname(rs.getString("slotname"));
                slot.setTime(rs.getString("time"));
                s.setSlot(slot);
                s.setDate(rs.getDate("date"));
                sche.add(s);
            }
        } catch (SQLException ex) {
            Logger.getLogger(ScheduleDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        return sche;
    }

    public ArrayList<Schedule> listSchedule(int InstructorID) {
        ArrayList<Schedule> schedules = new ArrayList<>();
        try {
            String sql = "SELECT s.ID, c.ClassName, sj.SubjectName, slot.SlotName, slot.Time, s.Date, i.Username\n"
                    + "FROM Supervise sup \n"
                    + "INNER JOIN Schedule s ON sup.ID = s.ID\n"
                    + "INNER JOIN Instructor i ON i.InstructorID = sup.InstructorID \n"
                    + "INNER JOIN Subject sj ON s.SubjectID = sj.SubjectID\n"
                    + "INNER JOIN Class c ON s.ClassID = c.ClassID\n"
                    + "INNER JOIN Slot slot ON slot.SlotID = s.SlotID\n"
                    + "WHERE i.InstructorID = ? ";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setInt(1, InstructorID);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                Schedule s = new Schedule();
                s.setScheduleid(rs.getInt("ID"));
                s.setDate(rs.getDate("date"));
                
                Subject sub = new Subject();
                sub.setSubjectname(rs.getString("subjectname"));
                s.setSubject(sub);

                Class c = new Class();
                c.setClassname(rs.getString("classname"));
                s.setClassname(c);

                Slot slot = new Slot();
                //slot.setSlotid(rs.getInt("SlotID"));
                slot.setSlotname(rs.getString("SlotName"));
                slot.setTime(rs.getString("time"));
                s.setSlot(slot);

                Instructor i = new Instructor();
                i.setUsername(rs.getString("Username"));
                s.setIntructor(i);
                
                schedules.add(s);
            }
        } catch (SQLException ex) {
            Logger.getLogger(ScheduleDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        return schedules;
    }

    public static void main(String[] args) {
        ScheduleDBContext db = new ScheduleDBContext();
        ArrayList<Schedule> schedules = db.listSchedule(1);
        for (Schedule schedule : schedules) {
            System.out.println(schedule);
        }
        

    }
}
