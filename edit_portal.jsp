
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="connectjdbc.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>edit</title>
    </head>
    <%!
        int i,j;
    %>
    <body>
        <h1>edit portal</h1>
        <form action="edit_portal2.jsp" method="POST">
            <font>enter emp_id: </font>
            <input type="text" name="emp_id" value="" />
         <!--   <font>to be changed:</font>
            <select name="vale">
                <%/*
                    r1=stat.executeQuery("select * from emp_profile");
                    md=r1.getMetaData();
                    r1.next();
                    j=md.getColumnCount();
                    for(i=1;i<=j;i++)
                    {*/
                %>
                <option value=<%/*=md.getColumnLabel(i)*/%>><%/*=md.getColumnLabel(i)*/%></option>
                <%/*}
                    r1=stat.executeQuery("select * from emp_auth");
                    md=r1.getMetaData();
                    r1.next();
                    j=md.getColumnCount();*/
                %>
                <option value=<%//=md.getColumnLabel(2)%>><%//=md.getColumnLabel(2)%></option>
                <option value=<%//=md.getColumnLabel(4)%>><%//=md.getColumnLabel(4)%></option>
                <option value="address">address</option>
            </select> -->
            <p>
                <input type="submit" value="submit" />
        </form>
    </body>
</html>
