/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.vc.handler;

import com.vc.connection.ConnectionDao;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.BodyTagSupport;

/**
 *
 * @author Vedanta-PC02
 */
public class MyTagHandler extends BodyTagSupport {

    @Override
    public int doEndTag() throws JspException {
        Connection con = null;
        PreparedStatement pst = null;
        ResultSet rs = null;
        ResultSetMetaData rsmt = null;
        try {
            String qeury = bodyContent.getString();
            JspWriter out = bodyContent.getEnclosingWriter();
            con = ConnectionDao.getConnection();
            pst = con.prepareStatement(qeury);
            boolean b = pst.execute();
            if (b == true) {
                //select logic
                rs = pst.getResultSet();
                rsmt = rs.getMetaData();
                out.println("<table class='table'>");
                out.println("<thead class=\"thead-dark\">");
                out.println("<tr>");
                for (int i = 1; i < rsmt.getColumnCount(); i++) {
                    out.println("<th scope=\"col\">" + rsmt.getColumnName(i) + "</th>");
                }
                out.println("</tr>");
                out.println("</thead>");
                out.println("<tbody>");
                while (rs.next()) {
                out.println("<tr>");
                    for (int i = 1; i < rsmt.getColumnCount(); i++) {
                        out.println("<td scope=\"col\">" + rs.getString(i) + "</td>");
                    }
                out.println("</tr>");
                }
                out.println("</tbody>");
                out.println("</table>");
            } else {
                //non-select logic
                int rowCount=pst.getUpdateCount();
                out.println("<h1>Rows Updated : "+rowCount+"</h1>");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return EVAL_PAGE;
    }
}
