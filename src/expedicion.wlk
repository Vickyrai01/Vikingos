import noPuedeSubirException.NoPuedeSubirException
class Expedicion{
    const lugaresAInvadir = #{}
    const vikingos = #{}

    method valeLaPena() = lugaresAInvadir.all({unLugar => unLugar.valeLaPenaInvadir(self.cantidadDeVikingos())})

    method cantidadDeVikingos() = vikingos.size()

    method cobrarVidas() {
        vikingos.forEach({unVikingo => unVikingo.casta().cobrarVida()}) //preguntar??
    }
    method subir(unVikingo){ 
		if (not unVikingo.puedeSubirA(self))
            throw new NoPuedeSubirException(message = "Este vikingo no puede ir a esta expedicion")

        vikingos.add(unVikingo)
        
    }

    method invadir(objetivos) {
        objetivos.forEach({lugar => lugar.serInvadida()})
        self.repartirBotin(self.botinDe(objetivos))
    }

    method botinDe(objetivos) =  objetivos.sum({unLugar => unLugar.botin(self.cantidadDeVikingos())})

    method repartirBotin(unaCantidad) {
        vikingos.forEach({vikingo => vikingo.ganar(unaCantidad / self.cantidadDeVikingos())})
    }
}
