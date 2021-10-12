package chegada;

import calculo.chegada.Space;
import java.text.DecimalFormat;


public class Ponto {
    
    private float So, Vo, t, a;
    
    DecimalFormat df = new DecimalFormat();

    public float getSo() {
        return So;
    }

    public void setSo(float So) {
        this.So = So;
    }

    public float getVo() {
        return Vo;
    }

    public void setVo(float Vo) {
        this.Vo = Vo;
    }

    public float getT() {
        return t;
    }

    public void setT(float t) {
        this.t = t;
    }

    public float getA() {
        return a;
    }

    public void setA(float a) {
        this.a = a;
    }
    
    public String deChegada(){
        
        String msg = "";
        
        double S = Space.spaceEnd(this.getSo(), this.getVo(), this.getA(), this.getT());
        
        if(S <= (150 * 1000)){
            msg += "<p>O veículo percorreu <strong>" + df.format(Space.km(S)) + " km</strong>. Portanto, o preço dessa viagem ficou no valor de <strong>R$ " + df.format(Space.precoAbaixoOuIgualA200m(S)) + " reais</strong>.</p>";
        }
        else{
            if(S > (150 * 1000)){
                msg += "<p>O veículo percorreu <strong>" + df.format(Space.km(S)) + " km</strong>. Portanto, o preço dessa viagem ficou no valor de <strong>R$ " + df.format(Space.precoAcimaDos200m(S)) + " reais</strong>.</p>";
            }
        }
        
        return msg;
    }
}
