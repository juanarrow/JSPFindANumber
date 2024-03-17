package modules;

public class Aleatorio {
    private int valor = 0;
    private int num = 0;
    private int max = 0;
    private int intentos = 0;
    private boolean iniciado = false;
    private String message = "";

    public Aleatorio(int maximo){
        this.max = maximo;
    }

    public void setNum(int num) {
        this.num = num;
    }

    public void setMax(int max) {
        this.max = max;
    }

    public void setIntentos(int intentos) {
        this.intentos = intentos;
    }

    public void setValor(int valor) {
        this.valor = valor;
    }

    @Override
    public String toString() {
        boolean acierto = false;
        String output = "<div class=\"container\">";
        if(intentos>0){
            intentos++;
            if(intentos>max){
                message ="Lo siento, ha alcanzado el número máximo de intentos";
            }
            else{
                if(num>valor){
                    message = "Te has pasado";
                }
                else if(num<valor){
                    message = "Te has quedado corto";
                }
                else{
                    message = "Enahorabuena, lo has acertado!!!";
                    acierto = true;
                }
            }
        }
        else
            valor = (int)(Math.random()*100);
    
        if(intentos == 0){
            this.valor = (int)(Math.random()*max);
            intentos++;
            output += String.format("<form method=\"POST\" action=\"index.jsp\">"+
                                        "<h1 class=\"mt-5\">Adivina el número</h1>"+
                                        "<p>He pensado en un número entre 1 y 100. ¿Puedes adivinar cuál es?</p>"+
                                        "<div class=\"form-group\">"+
                                            "<label for=\"num\">Introduce tu número:</label>"+
                                            "<input type=\"number\" class=\"form-control\" name=\"num\" autofocus>"+
                                            "<input type=\"hidden\" name=\"aleatorio\" value=\"%d\">"+
                                            "<input type=\"hidden\" name=\"intentos\" value=\"%d\">"+
                                        "</div>"+
                                        "<button class=\"btn btn-primary\" type=\"submit\">Adivinar</button>"+
                                    "</form>", valor, intentos);
        
            
        }
        else if(intentos > max){
            output += String.format("<p class=\"fallo\">%s</p><a href=\"index.jsp\">Volver a jugar</a>", message);
        }
        else{
            if(acierto){
                output += String.format("<p class=\"acierto\">%s</p><a href=\"index.jsp\">Volver a jugar</a>", message);
            }
            else{
                
                output += String.format("<p class=\"fallo\">%s</p>", message);
                output += String.format("<form method=\"POST\" action=\"index.jsp\">"+
                                        "<h1 class=\"mt-5\">Adivina el número</h1>"+
                                        "<p>He pensado en un número entre 1 y 100. ¿Puedes adivinar cuál es?</p>"+
                                        "<div class=\"form-group\">"+
                                            "<label for=\"num\">Introduce tu número:</label>"+
                                            "<input type=\"number\" class=\"form-control\" name=\"num\" autofocus>"+
                                            "<input type=\"hidden\" name=\"aleatorio\" value=\"%d\">"+
                                            "<input type=\"hidden\" name=\"intentos\" value=\"%d\">"+
                                        "</div>"+
                                        "<button class=\"btn btn-primary\" type=\"submit\">Adivinar</button>"+
                                    "</form>", valor, intentos);
                

            }
            
        }
        output+="</div>";
        return output;
    }
    
}
