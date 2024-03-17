<%-- index.jsp (proyecto Incrementa5) --%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="modules.Aleatorio"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="assets/css/style.css">
</head>
<body>
    <%
        Aleatorio aleatorio = new Aleatorio(100);
        aleatorio.setIntentos(request.getParameter("intentos")!=null?Integer.parseInt(request.getParameter("intentos")):0);
        aleatorio.setNum(request.getParameter("num")!=null?Integer.parseInt(request.getParameter("num")):0);
        aleatorio.setValor(request.getParameter("aleatorio")!=null?Integer.parseInt(request.getParameter("aleatorio")):0);
        out.print(aleatorio);
    %>
    <!--
    <div class="container">
        
            <%
            /*
                int num = 0;
                int aleatorio = 0;
                int intentos = 0;
                int maxIntentos = 10;
                String message = "";
                boolean acierto = false;
                if(request.getParameter("intentos")!=null && request.getParameter("intentos").length()!=0){
                    aleatorio = Integer.parseInt(request.getParameter("aleatorio"));
                    if(request.getParameter("num")!=null && request.getParameter("num").length()!=0)
                        num = Integer.parseInt(request.getParameter("num"));
                    intentos = Integer.parseInt(request.getParameter("intentos"));
                    intentos++;

                    if(intentos>maxIntentos){
                        message ="Lo siento, ha alcanzado el número máximo de intentos";
                    }
                    else{
                        if(num>aleatorio){
                            message = "Te has pasado";
                        }
                        else if(num<aleatorio){
                            message = "Te has quedado corto";
                        }
                        else{
                            message = "Enahorabuena, lo has acertado!!!";
                            acierto = true;
                        }
                    }
                }
                else
                    aleatorio = (int)(Math.random()*100);
            
                if(intentos == 0){
                    
                    out.print(String.format("<form method=\"POST\" action=\"index.jsp\">"+
                                                "<h1 class=\"mt-5\">Adivina el número</h1>"+
                                                "<p>He pensado en un número entre 1 y 100. ¿Puedes adivinar cuál es?</p>"+
                                                "<div class=\"form-group\">"+
                                                    "<label for=\"num\">Introduce tu número:</label>"+
                                                    "<input type=\"number\" class=\"form-control\" name=\"num\">"+
                                                    "<input type=\"hidden\" name=\"aleatorio\" value=\"%d\">"+
                                                    "<input type=\"hidden\" name=\"intentos\" value=\"%d\">"+
                                                "</div>"+
                                                "<button class=\"btn btn-primary\" type=\"submit\">Adivinar</button>"+
                                            "</form>", aleatorio, intentos));
                
                    
                }
                else if(intentos > maxIntentos){
                    out.print(String.format("<p>%s</p><a href=\"index.jsp\">Volver a jugar</a>", message));
                }
                else{
                    if(acierto){
                        out.print(String.format("<p>%s</p><a href=\"index.jsp\">Volver a jugar</a>", message));
                    }
                    else{
                        
                        out.print(String.format("<p>%s</p>", message));
                        out.print(String.format("<form method=\"POST\" action=\"index.jsp\">"+
                                                "<h1 class=\"mt-5\">Adivina el número</h1>"+
                                                "<p>He pensado en un número entre 1 y 100. ¿Puedes adivinar cuál es?</p>"+
                                                "<div class=\"form-group\">"+
                                                    "<label for=\"num\">Introduce tu número:</label>"+
                                                    "<input type=\"number\" class=\"form-control\" name=\"num\">"+
                                                    "<input type=\"hidden\" name=\"aleatorio\" value=\"%d\">"+
                                                    "<input type=\"hidden\" name=\"intentos\" value=\"%d\">"+
                                                "</div>"+
                                                "<button class=\"btn btn-primary\" type=\"submit\">Adivinar</button>"+
                                            "</form>", aleatorio, intentos));
                        

                    }
                    
                }
                */
        %>
    </div>
    -->
</body>
</html>