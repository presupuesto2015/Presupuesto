package presupuesto

class Rubro {
    String nombre
    float total
    String codigo
    Date periodo
    
    static belongsTo = [usuario: Usuario, departamentos: Departamento]
    static hasMany =[elementos: Elemento]

    static constraints = {
        nombre nullable:true, maxSize:30, blanck:false
        total nullable:true, maxSize:30, blanck:false
        codigo nullable:true, maxSize:30, blanck:false, unique:true
        periodo nullable:true, maxSize:30, blanck:false
    }
    
    static mapping ={
        table 'rubros'
        version false
    }
}
//Dominio Rubros