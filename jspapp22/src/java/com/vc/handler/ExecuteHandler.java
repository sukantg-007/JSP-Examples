/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.vc.handler;

import com.vc.connection.ConnectionDao;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.BodyTagSupport;

public class ExecuteHandler extends BodyTagSupport {

    @Override
    public int doEndTag() throws JspException {
        Connection con = null;
        PreparedStatement pst = null;
        ResultSet rst = null;
        ResultSetMetaData rsmt = null;
        JspWriter out = bodyContent.getEnclosingWriter();
        try {
            String query = bodyContent.getString();
            con = ConnectionDao.getConnection();
            pst = con.prepareStatement(query);
            boolean b = pst.execute();
                out.println("<html>");
                out.println("<body>");
            if (b == true) {
                //select logic
                rst = pst.getResultSet();
                rsmt = rst.getMetaData();
                int count = rsmt.getColumnCount();
                out.println("<table class=\"table\">");
                out.println("<thead class='thead-dark bg-dark text-white'>");
                out.println("<tr>");
                for (int i = 1; i <= count; i++) {
                    out.println("<th scope=\"col\">" + rsmt.getColumnName(i) + "</th>");
                }
                out.println("<tr>");
                while (rst.next()) {
                    out.println("<tr>");
                    for (int i = 1; i <= count; i++) {
                        out.println("<td scope=\"row\">" + rst.getString(i) + "</td>");
                    }
                    out.println("<tr>");
                }
                out.println("</table>");
            } else {
               int rowCount=pst.getUpdateCount();
               out.println("<h1>Rows Updated : "+rowCount+"</h1>");
            }
            out.println("</html>");
            out.println("</body>");
        } catch (Exception e) {
            e.printStackTrace();
        }
        return EVAL_PAGE;
    }

}
