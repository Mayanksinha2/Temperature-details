<%-- 
    Document   : hin
    Created on : 02-Jun-2022, 5:29:48 pm
    Author     : mayan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!--Jsp code for finding the minimum and maximun temperature-->
<%
String first=request.getParameter("first");
  String second=request.getParameter("second");
  String third=request.getParameter("third");
  int aTi=Integer.parseInt(request.getParameter("aTi"));
  int bTi=Integer.parseInt(request.getParameter("bTi"));
  int cTi=Integer.parseInt(request.getParameter("cTi"));
  int xTf=Integer.parseInt(request.getParameter("xTf"));
  int yTf=Integer.parseInt(request.getParameter("yTf"));
  int zTf=Integer.parseInt(request.getParameter("zTf"));
       
  if(aTi>bTi && aTi>cTi)
       out.println(first+" has maximum temperature");
  else if(bTi>aTi && bTi>cTi)
       out.println(second+" has maximum temperature");
  else
       out.println(third+" has maximum temperature");
       
  if(xTf<yTf && xTf<zTf)
       out.println(first+" has minimum temperature");
  else if(yTf<xTf && yTf<zTf)
       out.println(second+" has minimum temperature");
  else
       out.println(third+" has minimum temperature");

%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body bgcolor="pink">
    <center>
         <table border="1">
                <thead>
                    <tr>
                        <th colspan="4">City Temperature Details</th>
                    </tr>
                    <tr>
                        <th></th>
                        <th>Name</th>
                        <th>minimum temperature</th>
                        <th>maximun temperature</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>Enter First City</td>
                        <td><%=first%></td>
                        <td align="center"><%=aTi%></td>
                        <td align="center"><%=xTf%></td>
                    </tr>
                    <tr>
                        <td>Enter Second city</td>
                        <td><%=second%></td>
                        <td align="center"><%=bTi%></td>
                        <td align="center"><%=yTf%></td>
                    </tr>
                    <tr>
                        <td>Enter Third city</td>
                        <td><%=third%></td>
                        <td align="center"><%=cTi%></td>
                        <td align="center"><%=zTf%></td>
                    </tr>
                </tbody>
            </table>
    </center>
    </body>
</html>
