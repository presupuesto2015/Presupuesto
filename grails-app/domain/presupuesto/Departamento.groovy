package presupuesto

class Departamento {
    
    String codigo
    String nombre
    
    static hasMany =[rubros: Rubro, usuarios: Usuario, presupuestos: Presupuesto]
    

    static constraints = {
        codigo nullable:true, maxSize:30, blanck:false, unique:true
        nombre nullable:true, maxSize:30, blanck:false
    }
    
    static mapping ={
        table 'departamentos'
        version false
    }
}
