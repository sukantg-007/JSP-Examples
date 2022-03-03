package com.vc.function;

import com.vc.entity.Employee;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.List;

public class Hello {

    public static String sayHello(String name){
        return "Hello "+name;
    }
    
    public static List<String> showList(){
        List<String> list=new ArrayList<>();               
        list.add("AAA");
        list.add("BBB");
        list.add("CCC");
        list.add("DDD");
        list.add("EEe");
        return list;
    }
    
    public static List<Employee> showEmployee(){
        List<Employee> list=new ArrayList<>();               
        list.add(new Employee(100,"AAA",5000,"Daund"));
        list.add(new Employee(101,"BBB",5000,"Daund"));
        list.add(new Employee(102,"CCC",5000,"Daund"));
        list.add(new Employee(103,"SSs",5000,"Daund"));
        
        return list;
    }
}
