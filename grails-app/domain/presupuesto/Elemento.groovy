package presupuesto

class Elemento {

    String descripcion
    int cantidad
    String prioridad
    float precio
    
    static belongsTo = [rubros: Rubro]
    
    
    static constraints = {
        descripcion nullable:true, maxSize:30, blanck:false
        prioridad nullable:true, maxSize:30, blanck:false
        precio nullable:true, maxSize:30, blanck:false
        cantidad nullable:true, maxSize:10, blanck:false
    }
    
    static mapping ={
        table 'elementos'
        version false
    }
}
