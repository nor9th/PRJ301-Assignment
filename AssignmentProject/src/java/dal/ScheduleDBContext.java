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
import model.Schedule;
import model.Class;
import model.Slot;
import model.Subject;

/**
 *
 * @author lyxin
 */
public class ScheduleDBContext extends DBContext<Schedule> {

    public Schedule GetschedulebyId(int id) {
        try {
            String sql = "SELECT *, sub.SubjectName, c.ClassName, sl.SlotName, sl.[Time]\n"
                    + "FROM ((Schedule s JOIN [Subject] sub ON s.SubjectID = sub.SubjectID) \n"
                    + "JOIN Class c ON s.ClassID = c.ClassID ) JOIN Slot sl ON s.SlotID = sl.SlotID\n"
                    + "WHERE ID = ?";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setInt(1, id);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                Schedule s = new Schedule();
                s.setScheduleID(rs.getInt("scheduleid"));
                
                Subject sub = new Subject();
                sub.setSubjectid(rs.getInt("subjectid"));
                sub.setSubjectname(rs.getString("subjectname"));
                s.setSubject(sub);
                
                Class c = new Class();
                c.setClassid(rs.getInt("classid"));
                c.setClassname(rs.getString("classname"));
                s.setclassName(c);
                
                Slot slot = new Slot();
                slot.setSlotid(rs.getInt("slotid"));
                slot.setSlotname(rs.getString("slotname"));
                slot.setTime(rs.getString("time"));
                s.setSlot(slot);
                
                return s;
            }
        } catch (SQLException ex) {
            Logger.getLogger(ScheduleDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

}
