class Soldado{
    var vidasCobradas
    var armas

    method esProductivo() = vidasCobradas > 20 && self.tieneArmas()

    method tieneArmas() =  armas > 0
    
    method cobrarVida() {
        vidasCobradas += 1
    }

    method recompensarPorAscenso() {
        armas += 10
    }
}