<%@page import="chegada.Ponto"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            try{
                
                Ponto ponto = new Ponto();
                
                String Vo_txt = request.getParameter("Vo");
                String So_txt = request.getParameter("So");
                String t_txt = request.getParameter("t");
                String a_txt = request.getParameter("a");
                
                float Vo = Float.parseFloat(Vo_txt);
                float So = Float.parseFloat(So_txt);
                float t = Float.parseFloat(t_txt);
                float a = Float.parseFloat(a_txt);
                
                ponto.setSo(So);
                ponto.setVo(Vo);
                ponto.setT(t);
                ponto.setA(a);
                
                out.print(ponto.deChegada());
            }
            catch(Exception e){
                out.print("<h3> Error :/ ... " + e.getMessage() + "</h3>");
            }
        %>
    </body>
</html>
