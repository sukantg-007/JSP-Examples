/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.vc.handler;

import java.io.StringWriter;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.JspException;
import javax.servlet.jsp.tagext.JspFragment;
import javax.servlet.jsp.tagext.SimpleTagSupport;

/**
 *
 * @author Vedanta-PC02
 */
public class MyTagHandler extends SimpleTagSupport {

    int times;

    public void setTimes(int times) {
        this.times = times;
    }

    @Override
    public void doTag() throws JspException {
        JspWriter out = getJspContext().getOut();        
        try {            
            JspFragment f = getJspBody();
            StringWriter content=new StringWriter();
            f.invoke(content);
            for (int i = 0; i < times; i++) {                
            out.print("<h1>"+content+"</h1>");
            }
        } catch (java.io.IOException ex) {
            throw new JspException("Error in MyTagHandler tag", ex);
        }
    }
    
}
