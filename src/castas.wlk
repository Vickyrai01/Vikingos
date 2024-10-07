class Casta{
    method puedeIrDeExpedicion(unVikingo) = true
    
}
class Jarl inherits Casta{
    
    override method puedeIrDeExpedicion(unVikingo) = !(unVikingo.tieneArmas())

    method ascender(unVikingo) {
        unVikingo.casta(Karl)
        unVikingo.recompensarPorAscenso()
    }
}
class Karl inherits Casta{
    method ascender(unVikingo){
        unVikingo.casta(Thrall)
    }
}
class Thrall inherits Casta{
    method ascender(unVikingo){}
}