package presupuesto

class Presupuesto {
    
    String codigo
    float total
    Date periodo 
    
    static belongsTo = [departamentos: Departamento]

    static constraints = {
        codigo nullable:true, maxSize:30, blanck:false, unique:true
        total nullable:true, maxSize:30, blanck:false
        periodo nullable:true, maxSize:30, blanck:false
    }
    
    static mapping ={
        table 'presupuestos'
        version false
    }
}
