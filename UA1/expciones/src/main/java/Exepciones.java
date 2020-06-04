
public class Exepciones {
    public static void main (String args[]){
    
        int numerador;
        Integer  denominador = null;
        float divicion;
        
        numerador = 20;
   
        System.out.println("Antes de la divicion");
        
        try{
         
        divicion = numerador/denominador;
        
        }catch(Exception  e){
           System.out.println(e.getMessage()); 
           divicion = 0;
        }
        System.out.println(divicion);
       
    }
}
