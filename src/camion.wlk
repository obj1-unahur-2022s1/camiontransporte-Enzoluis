import cosas.*

object camion {
	const acoplado = []
		
	method cargar(cosa) { acoplado.add(cosa) } 
	method descargar(cosa) { acoplado.remove(cosa) }
	method todoPesoPar() = acoplado.all( { c => c.peso().even() } )
	method hayAlgunoQuePesa(peso) = acoplado.any( { c => c.peso() == peso } )
	method elDeNivel(nivel) = acoplado.find({ c => c.peligro() == nivel})
	method pesoTotal() = acoplado.sum( { c => c.peso()} ) + 1000
	method excedidoDePeso() = self.pesoTotal() > 2500
	method objetosQueSuperanPeligrosidad(nivel) = acoplado.filter( { c => c.peligro() > nivel})
	method objetosMasPeligrososQue(cosa) = acoplado.filter( { c => c.peligro() > cosa.peligro()} )
	method puedeCircularEnRuta(nivelMaximoPeligrosidad) = 
		self.excedidoDePeso() && self.objetosQueSuperanPeligrosidad(nivelMaximoPeligrosidad)
	
	method tieneAlgoQuePesaEntre(min, max) = acoplado.any( { c => c.peso().between(min, max)})
	
	method cosaMasPesada() = acoplado.max( { c => c.peso()} )
	
	method pesos() = acoplado.map( { c => c.peso()} )
}
