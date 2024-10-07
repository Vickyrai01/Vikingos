class Granjero{
    var cantHijos
    var hectarias

    method esProductivo() = hectarias >= 2 * cantHijos

    method tieneArmas() = false

    method cobrarVida() {}

    method recompensarPorAscenso() {
        cantHijos += 2
        hectarias += 2
    }
}