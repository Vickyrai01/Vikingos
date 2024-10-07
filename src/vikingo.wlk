class Vikingo{
    
    var property casta
    const tipoDeVikingo
    var oro


    method puedeIrDeExpedicion() = tipoDeVikingo.esProductivo() && casta.puedeIrDeExpedicion(tipoDeVikingo)

    method ascenderDeCasta() {
        casta.ascender(self)
    }

    method ganar(unaCantidad) {
      oro += unaCantidad
    }
}