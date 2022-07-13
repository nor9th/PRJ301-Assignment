/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import java.sql.Date;

/**
 *
 * @author lyxin
 */
public class Schedule {
    private int scheduleid;
    private Subject subject;
    private Class classname;
    private Slot slot;
    private Date date;
    private Instructor intructor;

    public int getScheduleid() {
        return scheduleid;
    }

    public void setScheduleid(int schuduleid) {
        this.scheduleid = schuduleid;
    }

    public Subject getSubject() {
        return subject;
    }

    public void setSubject(Subject subject) {
        this.subject = subject;
    }

    public Class getClassname() {
        return classname;
    }

    public void setClassname(Class classname) {
        this.classname = classname;
    }

    public Slot getSlot() {
        return slot;
    }

    public void setSlot(Slot slot) {
        this.slot = slot;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public Instructor getIntructor() {
        return intructor;
    }

    public void setIntructor(Instructor intructor) {
        this.intructor = intructor;
    }

    @Override
    public String toString() {
        return "Schedule{" + "scheduleid=" + scheduleid + ", subject=" + subject + ", classname=" + classname + ", slot=" + slot + ", date=" + date + ", intructor=" + intructor + '}';
    }


    
}
