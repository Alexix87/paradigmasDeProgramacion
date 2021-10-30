import errores.DineroInsuficienteException
import suscripciones.*

object usuario {
	var suscripcion
	var dinero
	var humor
	
	method actualizarSuscripcion(unaSuscripcion){
		suscripcion = unaSuscripcion
	}
	
	method pagarSuscripcion(){
		const costoSuscripcion = suscripcion.costo()
		
		if (dinero < costoSuscripcion)
			throw new DineroInsuficienteException()
		else
			dinero-= costoSuscripcion
	}
	
	method pagar(cantidad){
		dinero -= cantidad //que pasa si no le alcanza la plata?
	}

	method jugar(unJuego,cantidadHoras){
		unJuego.serJugado(self,cantidadHoras)
	}

	method reducirHumor(cantidad){
		humor -= cantidad
	}
	
	method aumentarHumor(cantidad){
		humor += cantidad
	}
	
	method tirarTodoAlCarajo(){
		self.actualizarSuscripcion(infantil)
	}

}
