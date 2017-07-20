
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="connectjdbc.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <%!
        String[] s=new String[12];
        int i;
    %>
    <%
        String s1=(String)session.getAttribute("puid");
        r1=stat.executeQuery("select * from emp_profile where emp_id="+s1);
        md=r1.getMetaData();
        int j=md.getColumnCount();//here j value will number of colums in table i.e 11 and index will start from 1 and not 0
        if(r1.next())
        {
            for(i=1;i<=j;i++)
             s[i]=r1.getString(i);
        }
        r1=stat.executeQuery("select to_char(do_birth,'dd-MON-yyyy') from emp_profile where emp_id="+i);
        r1.next();
        s[4]=r1.getString(1);
        r1=stat.executeQuery("select to_char(do_join,'dd-MON-yyyy') from emp_profile where emp_id="+i);
        r1.next();
        s[5]=r1.getString(1);
        i=Integer.parseInt(s[3]);
        r1=stat.executeQuery("select dept_name from master_dept where dept_id="+i);
        r1.next();
        s[3]=r1.getString(1);
        i=Integer.parseInt(s[8]);
        r1=stat.executeQuery("select desgn_name from master_desgn where desgn_id="+i);
        r1.next();
        s[8]=r1.getString(1);
        i=Integer.parseInt(s[6]);
        r1=stat.executeQuery("select description from master_status where status="+i);
        r1.next();
        s[6]=r1.getString(1);
    %>
    <body bgcolor="yellow">
    <center>
        
        <font color="blue">Employee home page</font>
        <h1>Hello <%=s[2]%></h1>
        <a href="location.jsp">route map</a>&nbsp;&nbsp;
        <a href="change_data.jsp">change</a>&nbsp;&nbsp;
        <p>
  <%  
     i=Integer.parseInt(s[1]);
     pre=con.prepareStatement("select * from photos where id="+s[1]);
     r1 = pre.executeQuery();
            if( r1.next()) 
            {
                  out.println("<img width='100' height='100' src=displayphoto.jsp?id=" +  r1.getString("id") + "></img> <p/>");
            } %>
        <table>
            <tr>
                <td>Emp.ID: </td>
                <td><%=s[1]%></td>
            </tr>
            <tr>
                <td>Name: </td>
                <td><%=s[2]%></td>
            </tr>
            <tr>
                <td>Dept Name:</td>
                <td><%=s[3]%></td>
            </tr>
            <tr>
                <td>Dob:</td>
                <td><%=s[4]%></td>
            </tr>
            <tr>
                <td>Doj:</td>
                <td><%=s[5]%></td>
            </tr>
            <tr>
                <td>Blood Group:</td>
                <td><%=s[11]%></td>
            </tr>
            <tr>
                <td>Status</td>
                <td><%=s[6]%></td>
            </tr>
            <tr>
                <td>Gender:</td>
                <td><%=s[7]%></td>
            </tr>
            <tr>
                <td>Desgn:</td>
                <td><%=s[8]%></td>
            </tr>
            <tr>
                <td>Phone:</td>
                <td><%=s[9]%></td>
            </tr>
            <tr>
                <td>Mail ID:</td>
                <td><%=s[10]%></td>
            </tr>
        </table>    
        <form action="logout.jsp" method="POST">
            <input type="submit" value="exit" name="log out" />
        </form>
    </center>
    </body>
</html>
