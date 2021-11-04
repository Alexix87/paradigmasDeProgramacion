class Disfraz {
	var nombre
	var fechaDeConfeccion
	var caracteristicas = []

	method esDisfraz() = true

	method puntajeDeDisfrazSobre(unaPersona){
		return caracteristicas.map({unaCaracteristica => unaCaracteristica.puntajeSegun(unaPersona)}).sum()
	}

	method tieneNombreConCantidadDeLetrasPar(){
		return nombre.size().even()
	}
	
	method fueConfeccionadoHaceMenosDe(unaCantidad){
		var fechaDeHoy = new Date()
		return fechaDeConfeccion-fechaDeHoy < unaCantidad
	}

	method tienePuntaje(unPuntaje,unaPersona){
		return self.puntajeDeDisfrazSobre(unaPersona) == unPuntaje
	}
	
}

class DisfrazNulo inherits Disfraz{
	override method esDisfraz() = false
}

object gracioso{
	var nivelDeGracia = 5
	
	method puntajeSegun(unaPersona){
		if (unaPersona.esMayorDe(50)){
			return nivelDeGracia*3
		} else{
			return nivelDeGracia
		}
	}
}

object tobaras{
	var fechaDeCompra
	
	method puntajeSegun(unaPersona){
		if ((unaPersona.fechaDeFiesta() - fechaDeCompra) > 2){
			return 5
		}else{
			return 3
		}
	}
}

object careta{
	var personajeReal
	
	method puntajeSegun(unaPersona){
		return personajeReal.puntaje()
	}
}
 
object mickeyMouse{
	method puntaje() = 8
}

object osoCarolina{
	method puntaje() = 6
}
 
 object sexie{
 	method puntajeSegun(unaPersona){
 		if (unaPersona.esSexy()){
 			return 15
 		}else{
 			return 2
 		}
 	}
 }
