<%-- 
    Document   : bai_3
    Created on : Oct 16, 2024, 9:08:58 AM
    Author     : ADMIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Diện tích - Chu vi hình tròn</h1>
          <form action="bai_3.jsp" method="post">
              <talle>
    <tr>
        <td>Nhập bán kính</td>

        <td><input type="text" name="bk" value=""/></td>
    </tr>
    <tr>
        <td><input type="submit" value="Tính toán"/>
            <input type="reset" value="Tiếp tục"/>
        </td>
    </tr>
    </table>
    <%
        String bk = request.getParameter("bk");
        double cv, dt;
        if (bk != null) {
            double d = Double.parseDouble(bk);
            cv = 2*d*Math.PI;
            dt = d*Math.PI;
            out.println("<hr>");
            out.println("Diện tích:" +dt +"</br>");
            out.println("Chi vi:" + cv+ "</br>");
        
    %>
    <hr>
    Diện tích <%=dt%> <br>
    Chu vi <%=cv%> <br>
    <%
        }
    %>
</body>
</html>
