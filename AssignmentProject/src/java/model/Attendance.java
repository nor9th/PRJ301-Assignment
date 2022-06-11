/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author lyxin
 */
public class Attendance {
    private int attendanceid;
    private Schedule schedule;
    private Student student;
    private String attendence;

    public int getAttendanceid() {
        return attendanceid;
    }

    public void setAttendanceid(int attendanceid) {
        this.attendanceid = attendanceid;
    }

    public Schedule getSchedule() {
        return schedule;
    }

    public void setSchedule(Schedule schedule) {
        this.schedule = schedule;
    }

    public Student getStudent() {
        return student;
    }

    public void setStudent(Student student) {
        this.student = student;
    }

    public String getAttendence() {
        return attendence;
    }

    public void setAttendence(String attendence) {
        this.attendence = attendence;
    }
    
}
