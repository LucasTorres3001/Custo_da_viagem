package calculo.chegada;

import java.time.LocalDate;
import java.time.LocalTime;


public class Space {
    
    public static double spaceEnd(float espacoInicial, float velocidadeInicial, float aceleracao, float tempo){
        return (espacoInicial + (velocidadeInicial * tempo) + ((aceleracao * (tempo * tempo)) / 2));
    }
    
    public static double km(double a){
        return (a / 1000);
    }
    
    public static double precoAbaixoOuIgualA200m(double a){
        return (((a * 1) /2) / 1000);
    }
    
    public static double precoAcimaDos200m(double a){
        return (((a * 45) / 100) / 1000);
    }
    
    public static String dateHourAndAuthor(){
        
        String msg = "";
        
        msg += "<p>"+ LocalDate.now().getDayOfMonth() + " / " + LocalDate.now().getMonthValue() + " / " + LocalDate.now().getYear() + "</p>";
        msg += "<p>" + LocalTime.now().getHour() + " h " + LocalTime.now().getMinute() + " min.</p>";
        msg += "<p>&copy; <em>by Lucas Torres</em></p>";
        
        return msg;
    }
}
