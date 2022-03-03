/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.vc.simpletag;

import com.vc.connection.ConnectionDao;
import java.io.StringWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.JspException;
import javax.servlet.jsp.tagext.JspFragment;
import javax.servlet.jsp.tagext.SimpleTagSupport;

/**
 *
 * @author Vedanta-PC02
 */
public class MyTagHandler extends SimpleTagSupport {

    @Override
    public void doTag() throws JspException {
        JspWriter out = getJspContext().getOut();
        Connection con = null;
        PreparedStatement pst = null;
        ResultSet rs = null;
        ResultSetMetaData rsmt = null;
        try {
            StringWriter content = new StringWriter();
            JspFragment f = this.getJspBody();
            f.invoke(content);
            String query = content.toString();
            con = ConnectionDao.getConnection();
            pst = con.prepareStatement(query);
            boolean b = pst.execute();
            if (b == true) {
                //select logic
                rs = pst.getResultSet();
                rsmt = rs.getMetaData();
                out.println("<table class='table border border-dark'>");
                out.println("<thead class=\"thead-dark bg-dark text-white border\">");
                out.println("<tr>");
                for (int i = 1; i < rsmt.getColumnCount(); i++) {
                    out.println("<th scope=\"col\">" + rsmt.getColumnName(i) + "</th>");
                }
                out.println("</tr>");
                out.println("</thead>");
                out.println("<tbody'>");
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
                int rowCount = pst.getUpdateCount();
                out.println("<h1>Rows Updated : " + rowCount + "</h1>");
            }
        } catch (Exception ex) {
            throw new JspException("Error in MyTagHandler tag", ex);
        }
    }

}
