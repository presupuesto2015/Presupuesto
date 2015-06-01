package presupuesto

class Usuario {
    
    String nombre
    Date fecha 
    int cedula
    int telefono
    String email
    String cargo
    
    static belongsTo = [departamentos: Departamento]
    static hasMany =[rubros: Rubro]

    static constraints = {
        nombre nullable:true, maxSize:30, blanck:false
        cedula nullable:true, maxSize:30, blanck:false, unique:true
        telefono nullable:true, maxSize:30, blanck:false
        email nullable:true, maxSize:30, blanck:false
        cargo nullable:true, maxSize:30, blanck:false
        fecha nullable:true, maxSize:30, blanck:false
    }
    
    static mapping={
        table 'usuario'
        version false
    }
}
