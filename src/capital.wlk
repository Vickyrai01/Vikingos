class Capital{
    const factorRiqueza
    var defensores

    method valeLaPenaInvadir(unosVikingos) = unosVikingos * 3 <= self.botin(unosVikingos)

    method botin(unosVikingos) = self.defensoresDerrotados(unosVikingos) * factorRiqueza

    method defensoresDerrotados(unosVikingos) = defensores.min(unosVikingos)

    method serInvadida(unaExpedicion, unosVikingos) { // preguntar por unosVikingos
        unaExpedicion.cobrarVidas()
        defensores -= self.defensoresDerrotados(unosVikingos)
    }

}