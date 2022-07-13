/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import com.oracle.wls.shaded.org.apache.bcel.generic.AALOAD;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Instructor;
import model.Schedule;

/**
 *
 * @author lyxin
 */
public class LectureDBContext extends DBContext {
    public ArrayList<Instructor> list() {
        ArrayList<Instructor> ins = new ArrayList<>();
        try {
            String sql = "SELECT InstructorID, IName, Username FROM Instructor";
            PreparedStatement stm = connection.prepareStatement(sql);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                Instructor in = new Instructor();
                in.setInstructorID(rs.getInt("InstructorID"));
                in.setIName(rs.getString("IName"));
                in.setUsername(rs.getString("Username"));
                ins.add(in);
            }
        } catch (SQLException ex) {
            Logger.getLogger(LectureDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        return ins;
    }
    
    public static void main(String[] args) {
        LectureDBContext db = new LectureDBContext();
        ArrayList<Instructor> ins = db.list();
        for (Instructor in : ins) {
            System.out.println(in);
        }

    }
}
