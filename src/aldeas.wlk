class Aldea{

    var cantidadDeCrucifijos

    method valeLaPenaInvadir(unosVikingos) = self.botin(unosVikingos) >= 15

    method botin(unosVikingos) = cantidadDeCrucifijos

    method serInvadida(unaExpedicion, unosVikingos){

        cantidadDeCrucifijos = 0
    }
}

class AldeaAmurallada inherits Aldea{

    const cantMinimaDeVikingos

    override method valeLaPenaInvadir(unosVikingos) = super(unosVikingos) && unosVikingos >= cantMinimaDeVikingos

}