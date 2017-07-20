

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="connectjdbc.jsp" %>
<%@page import="java.io.*" %>
<!DOCTYPE html>
<%
    pre = con.prepareStatement("select photo from photos where id = ?");
            String id = request.getParameter("id");
            pre.setString(1,id);
            r1 = pre.executeQuery();
            r1.next();
            Blob  b = r1.getBlob("photo");
            response.setContentType("image/jpeg");
            response.setContentLength( (int) b.length());
            InputStream is = b.getBinaryStream();
            OutputStream os = response.getOutputStream();
            byte buf[] = new byte[(int) b.length()];
            is.read(buf);
            os.write(buf);
            os.close();
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
    </body>
</html>
