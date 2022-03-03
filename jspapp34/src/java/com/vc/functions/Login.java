package com.vc.functions;

import com.vc.dao.ConnectionDao;
import com.vc.dao.IConnectionDao;

public class Login {
    private static IConnectionDao connectionDao;
    public static boolean isValid(String uname, String upass){
        connectionDao=new ConnectionDao();
        String msg=connectionDao.check(uname, upass);        
        return msg=="success"?true:false;
    }
}
