<%-- 
    Document   : bai_4
    Created on : Oct 16, 2024, 9:34:11 AM
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
        <h1>Đổi tiền tệ</h1>
        <form action="bai_4.jsp" method="post">
            Cho biết số tiền: <input type="number" name="sotien" value="" required="" />
            <br>
            Cho biết loại tệ
            <select name="loaingoaite">
                <option value="USD">USD - Đô la mỹ</option>
                <option value="GBP">GBP - Bảng anh</option>
                <option value="EUR">EUR - Euro</option>
                <option value="JPY">JPY - Yên nhật</option>
                <option value="AUD">AUD - Đô la úc</option>
            </select>   
            <input type="submit"  value="Đổi tiền" />
            <input type="reset"  value="Tiếp tục" />
        </form> 
        <%
            // lấy dữ từ form
            if (request.getParameter("sotien") != null && request.getParameter("loaingoaite") != null) {
                double sotien = Double.parseDouble(request.getParameter("sotien"));
                String loaingoaite = request.getParameter("loaingoaite");
                double tienvnd = 0;

                //tính số tiền quy đổi
                switch (loaingoaite) {
                    case "USD":
                        tienvnd = sotien * 24.964;
                        break;
                    case "GBP":
                        tienvnd = sotien * 32.637;
                        break;
                    case "EUR":
                        tienvnd = sotien * 27.200;
                        break;
                    case "JPY":
                        tienvnd = sotien * 167.0 ;
                        break;
                    case "AUD":
                        tienvnd = sotien * 16.705;
                        break;
                }
                //hiển thị kết quả
                out.println("<hr>");
                out.println("<h1>Kết quả đổi tiền</h1>");
                 out.println( String.format("Số tiền đổi được: %,.2f", tienvnd) + " VND");
            }
        %>
</html>
