package presupuesto

class PooController {

    def index() { 
        render text: "Presupuesto"
    }
    
    class Rubro {
        String codigo
        String nombre
        Departamento departamento
        Usuario creador
        Float total
        Date fecha
        Elemento listaDeElementos
    
    
        def calcularTotal(){
        
        }
    
        def crearRubro(){
        
        }
        def eliminarElemento(){
        
        }
    
        def editarRubro(){
        
        }
    
    }



    def Rubro(String codigo, String nombre, Usuario creador, Departamento departamento, Date fecha, Elemento listaDeElementos){
        this.codigo = codigo
        this.nombre = nombre
        this.creador = creador
        this. departamento = departamento
        this.fecha = fecha
        this.listaDeElementos = listaDeElementos
    }

    def crearRubro (String codigo, String nombre, Usuario creador, Departamento departamento, Date fecha){
        this.creador = creador
        this.nombre = nombre
        this.departamento = departamento
        this.fecha = fecha
            
    }
         
    def eliminarElemento(String codigo){
        this.codigo = codigo
    }

    def editarRubro(String codigo, String nombre){
        this.codigo = codigo
        this.nombre = nombre
        
    }

    def calculoTotal(){
        
    }



    class Elemento {

        String concepto
        Float monto
        Integer importancia

        def Elemento(String concepto, Float monto, Integer importancia){

        }


    }
    
    class Departamento{
        String nombre
        Rubro rubro 

        def Departamento(String nombre){

        }


    }

    class Usuario{
        String nombre
        Date fechadenacimiento
        Integer telefono
        String cargo
        String email

        def Usuario(String nombre, Date fechadenacimiento, Integer telefono, String cargo, String email){
            
            
        }

    } 
    
}
