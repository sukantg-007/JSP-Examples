/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.vc.handler;

import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.JspException;
import javax.servlet.jsp.PageContext;
import javax.servlet.jsp.tagext.JspFragment;
import javax.servlet.jsp.tagext.SimpleTagSupport;

public class HelloHandler extends SimpleTagSupport {
   
    
    @Override
    public void doTag() throws JspException {
        JspWriter out = getJspContext().getOut();
        
        try {           
            out.println("<html>");
            out.println("<body>");            
            out.println("<h1 style='color:red;'>Welcome from simpletagsupport!</h1>");            
            out.println("</body>");
            out.println("</html>");
        } catch (java.io.IOException ex) {
            throw new JspException("Error in HelloHandler tag", ex);
        }
    }
    
}
