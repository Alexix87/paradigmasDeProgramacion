import errores.NoHayJuegoConEseNombreException
import errores.DineroInsuficienteException
import juegos.*
import suscripciones.*

object gameflix {
	const juegos = []
	const usuarios = []
	
	method juegosDeCategoria(unaCategoria){
		return juegos.filter({unJuego => unJuego.esDeCategoria(unaCategoria)})
	}

	method juegoDeNombre(unNombre){
		return juegos.findOrElse({unJuego => unJuego.tieneNombre(unNombre)}, {throw new NoHayJuegoConEseNombreException()})
	}	
	
	method recomendarUnJuego(){
		return juegos.anyOne()
	}
	
	method cobrarSuscripciones(){
		usuarios.forEach({unUsuario => self.cobrarAUsuario(unUsuario)})
	}
	
	method cobrarAUsuario(unUsuario){
		try{
			unUsuario.pagarSuscripcion()
		} catch e: DineroInsuficienteException{
			unUsuario.actualizarSuscripcion(prueba)
		}
	
	
	}
}
