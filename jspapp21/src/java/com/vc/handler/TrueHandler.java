/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.vc.handler;

import java.io.IOException;
import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.BodyContent;
import javax.servlet.jsp.tagext.TagSupport;

public class TrueHandler extends TagSupport {

    @Override
    public int doStartTag() throws JspException {
        IfHandler ifHandler=(IfHandler) getParent();
        boolean condition=ifHandler.isCondition();
        if(condition==true){
            return EVAL_BODY_INCLUDE;
        }else{
            return SKIP_BODY;
        }
    }

    @Override
    public int doEndTag() throws JspException {
        return EVAL_PAGE;
    }
    
}
