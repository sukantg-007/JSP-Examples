package com.vc.entity;
public class Employee {
    
    private int eid;
    private String ename;
    private float esal;
    private String eaddr;

    public Employee(int eid, String ename, float esal, String eaddr) {
        this.eid = eid;
        this.ename = ename;
        this.esal = esal;
        this.eaddr = eaddr;
    }
    
    
    @Override
    public String toString() {
        return "Employee{" + "eid=" + eid + ", ename=" + ename + ", esal=" + esal + ", eaddr=" + eaddr + '}';
    }
}
