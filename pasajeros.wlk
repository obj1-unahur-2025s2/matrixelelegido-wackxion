import nave.*

object neo {
    
    var energia = 100
method esElElegido() = true
method vitalidad() = energia/10
method saltar() {
    energia = energia / 2
}
method bajarDeLaNave(){
    nave.pasajerosDentroDeLaNave().remove(self)
}
method subirALaNave(){
    nave.pasajerosDentroDeLaNave().add(self)
}
}
object morfeo {
    var vitalidad = 8
    var estaCansado = false
method esElElegido() = false
method vitalidad() = vitalidad
method variacionDeVitalidadEn_(cantidad){
    vitalidad = cantidad
}
method estaCansado() = estaCansado

method saltar() {
    if(self.estaCansado()){
        estaCansado = false
        vitalidad -= 1
    } else {
        estaCansado = true
        vitalidad -= 1
    }
    
}

method bajarDeLaNave(){
    nave.pasajerosDentroDeLaNave().remove(self)
}
method subirALaNave(){
    nave.pasajerosDentroDeLaNave().add(self)
}
  
}
object trinity {

method saltar() = true
method esElElegido() = false
method vitalidad() {
    return 0
}
method bajarDeLaNave(){
    nave.pasajerosDentroDeLaNave().remove(self)
}
method subirALaNave(){
    nave.pasajerosDentroDeLaNave().add(self)
}
  
}