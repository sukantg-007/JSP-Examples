package com.vc.service;

import com.vc.connection.ConnectionDao;
import com.vc.entity.Employee;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import org.hibernate.cfg.annotations.ResultsetMappingSecondPass;

public class EmpService implements IEmpService{
    private static final String INSER_EMP_QUERY="INSERT INTO EMP2 VALUES (?,?,?,?)";
    private static final String SELECT_EMP_QUERY="SELECT * FROM EMP2";
    Connection con;

    public EmpService() {
        try {
            con=ConnectionDao.getConnection();            
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
    
    @Override
    public String addEmp(Employee e) {
        PreparedStatement pst=null;
        String status="";
        try {
            pst=con.prepareStatement(INSER_EMP_QUERY);
            pst.setInt(1, e.getEid());
            pst.setString(2, e.getEname());
            pst.setFloat(3, e.getEsal());
            pst.setString(4, e.getEaddr());
            status=pst.executeUpdate()>0?"success":"fail";
        } catch (Exception e1) {
            e1.printStackTrace();
        }
        return status;
    }

    @Override
    public List<Employee> getEmployees() {
        PreparedStatement pst=null;
        ResultSet rs=null;
        List<Employee> list=new ArrayList<>();
        try {
            pst=con.prepareStatement(SELECT_EMP_QUERY);
            rs=pst.executeQuery();
            if(rs!=null){
                while(rs.next()){
                    Employee emp=new Employee();
                    emp.setEid(rs.getInt("eid"));
                    emp.setEname(rs.getString("ename"));
                    emp.setEsal(rs.getFloat("esal"));
                    emp.setEaddr(rs.getString("eaddr"));
                    list.add(emp);
                }                    
            }
        } catch (Exception e1) {
            e1.printStackTrace();
        }
        return list;
    }
    
}
