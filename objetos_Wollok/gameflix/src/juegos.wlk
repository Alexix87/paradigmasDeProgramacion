class Juego {
	const nombre
	const precio
	const categoria
	
	method esDeCategoria(unaCategoria){
		return categoria == unaCategoria
	}
	
	method tieneNombre(unNombre){
		return nombre == unNombre
	}
	
	method esBarato(){
		return precio < 30
	}
}

class JuegoViolento inherits Juego{
	method serJugado(unJugador,cantidadHoras){
		unJugador.reducirHumor(10*cantidadHoras)
	}	
}

class Moba inherits Juego{
	method serJugado(unJugador,cantidadHoras){
		unJugador.pagar(30)
	}
}

class Terror inherits Juego{
	method serJugado(unJugador,cantidadHoras){
		unJugador.tirarTodoAlCarajo()
	}
}

class Estrategicos inherits Juego{
	method serJugado(unJugador,cantidadHoras){
		unJugador.aumentarHumor(5*cantidadHoras)
	}
}

const gta = new Juego(nombre="GTA",precio=50,categoria="tiros")
