import UIKit

var str = "Tarea Velocimetro Digital"
// : Enumeracion
enum Velocidades : Int {
    case Apagado = 0, VelocidadBaja = 20, VelocidadMedia = 50, VelocidadAlta = 120
    init( velocidadinicial : Velocidades) {
        self = velocidadinicial
    }
}

// : Clase

class Auto {
var velocidad : Velocidades
       init(){
            velocidad = Velocidades.Apagado
            }
// : Metodo Cambio de Velocidad

    func cambioDeVelocidad() -> (actual : Int, velocidadEnCadena : String){
        var avanceActual : Int
        var enunciado : String = ""

        switch velocidad {
            case Velocidades.Apagado:

                avanceActual = self.velocidad.rawValue
                enunciado = "Apagado"
                self.velocidad = Velocidades.VelocidadBaja

            case Velocidades.VelocidadBaja:
        
                avanceActual = self.velocidad.rawValue
                enunciado = "Velocidad Baja"
                self.velocidad = Velocidades.VelocidadMedia

            case Velocidades.VelocidadMedia:

                avanceActual = self.velocidad.rawValue
                enunciado = "Velocidad Media"
                self.velocidad = Velocidades.VelocidadAlta

            case Velocidades.VelocidadAlta:

                avanceActual = self.velocidad.rawValue
                enunciado = "Velocidad Alta"
                self.velocidad = Velocidades.VelocidadMedia
   
        }
        return (avanceActual, enunciado)
        
    }

}
// : Pruebas de la clase y metodo

var auto = Auto()
auto.velocidad

for i in 1...20 {
    let resultado = auto.cambioDeVelocidad()
    print("\(resultado.actual) \(resultado.velocidadEnCadena)")
}
