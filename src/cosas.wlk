object knightRider {
	
	method peso() = 500
	method peligro() = 10 
}

object bumblebee {
	var transformacion = true
	
	method peso() = 800
	method peligro() = if(transformacion){15} else{30}
	method esRobot(){ transformacion = not transformacion}
}

object paqueteLadrillos{
	var cantLadrillo = 0
	
	method peso() =  cantLadrillo
	method cantidadDe(cant) {cantLadrillo = 2 * cant} 
	method peligro() = 2 
}


object arena {
	var cantArena = 0
	
	method peso() = cantArena
	method cantidadDe(cant) {cantArena = cant}
	method peligro() = 1
}

object bateriaAntiarea {
	var misil = true
	
	method peso() = if(misil) {300} else {200}
	method misilesNoDisponibles() {misil = not misil} 
	method peligro() = if(misil) {100} else {0}
}

object contenedor {
	var peso = 100
 	var peligro = 0 
 	
	method peso() = peso 
	method obtenerPesoYobjeto(cosa) { 
		peso += cosa.peso()
		peligro =  cosa.peligro()
	}
	method peligro() = peligro
}

object residuosRadioactivos {
	var peso = 0
	
	method peso() = peso
	method cantidadDe(cant) {peso = cant}
	method peligro() = 200
}

object embalajeSeguridad {
	var peso = 0
	var peligro = 0
	
	method peso() = peso
	method obtenerPesoYobjeto(cosa) { 
		peso = cosa.peso()
		peligro =  cosa.peligro()
	}
	method peligro() = peligro / 2
}



