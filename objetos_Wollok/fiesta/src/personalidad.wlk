object alegre {
	method esSexy(unaPersona) = false
}

object taciturna{
	method esSexy(unaPersona){
		return not (unaPersona.esMayorDe(30))
	}
}

object cambiante{
	var personalidades = [alegre,taciturna]
	
	method esSexy(unaPersona){
		return personalidades.anyOne().esSexy(unaPersona)
	}
}