import UIKit

var str = "Tarea Velocimetro Digital"

enum Velocidades : Int {
    case Apagado = 0, VelocidadBaja = 20, VelocidadMedia = 50, VelocidadAlta = 120
    init( velocidadinicial : Velocidades) {
        self = velocidadinicial
    }
}
class auto {
var velocidad : Velocidades
       init(){
velocidad = Velocidades.Apagado


}
}
