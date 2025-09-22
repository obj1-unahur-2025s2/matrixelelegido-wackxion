import pasajeros.*
object nave {

const pasajerosDentroDeLaNave = [neo,morfeo,trinity]

method pasajerosDentroDeLaNave() = pasajerosDentroDeLaNave
method cantidadDePasajero(){
    return pasajerosDentroDeLaNave.size()
}
method pasajeroConMayorVitalidad(){
    return pasajerosDentroDeLaNave.max({p => p.vitalidad()})
}
method estaEquilibrada(){
    pasajerosDentroDeLaNave.size({p => p.vitalidad() > p.vitalidad()*2}) > 0
}
method estaElElegidoEnLaNave() {
    pasajerosDentroDeLaNave.contains({p => p.esElElegido()})
}
method chocar(){
    pasajerosDentroDeLaNave.forEach({p => p.saltar()})
    pasajerosDentroDeLaNave.forEach({p => p.bajarDeLaNave()})
}
method acelerar(pasajeros){
    pasajerosDentroDeLaNave.forEach({p => if(p.esElElegido()){p.saltar()}})                     
}
}