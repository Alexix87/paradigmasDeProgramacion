object premium {
	const costo = 50
	method costo() = costo
	method permiteJugar(unJuego) = true
}

object base{
	const costo = 25
	method costo() = costo
	method permiteJugar(unJuego){
		return unJuego.esBarato()
	}
}

object prueba{
	const costo = 0
	method costo() = costo
	method permiteJugar(unJuego){
		return unJuego.esDeCategoria("Demo")
	}
}

object infantil{
	const costo = 10
	method costo() = costo
	method permiteJugar(unJuego){
		return unJuego.esDeCategoria("Infantil")
	}
}