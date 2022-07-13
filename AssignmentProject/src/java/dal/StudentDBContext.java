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
import model.Student;

/**
 *
 * @author lyxin
 */
public class StudentDBContext extends DBContext {
    public ArrayList<Student> getStudentsFromClass(int classID) {
        String sql = "select s.*\n"
                + "from Student s join ClassMember cm on s.StudentCode =  cm.StudentCode\n"
                + "where cm.ClassID = ?";
        ArrayList<Student> listStudent = new ArrayList<>();
        try {
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setInt(1, classID);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                Student x = new Student();
                x.setStudentcode(rs.getString("StudentCode"));
                x.setFullname(rs.getString("FullName"));
                x.setImage(rs.getString("Image"));
                listStudent.add(x);
            }
        } catch (SQLException ex) {
            Logger.getLogger(StudentDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        return listStudent;
    }

    public Student getStudentByStudentCode(String studentCode) {
        String sql = "select *\n"
                + "from Student\n"
                + "where StudentCode = ?";
        try {
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, studentCode);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                Student x = new Student();
                x.setStudentcode(rs.getString("StudentCode"));
                x.setFullname(rs.getString("FullName"));
                x.setImage(rs.getString("Image"));
                return x;
            }
        } catch (SQLException ex) {
            Logger.getLogger(StudentDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
}
