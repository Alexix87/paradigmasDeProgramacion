import errores.NoPuedeAgregarAsistenteException

object fiesta{
	var lugar
	var fecha
	var invitados = []
	var fiesta
	
	method esUnBodrio(){
		return invitados.all({unInvitado => not( unInvitado.estaConformeConSuDisfraz() )})
	}

	method mejorDisfraz(){
		return invitados.max({unInvitado => unInvitado.puntajeDedisfraz()}).disfraz()
	}

	method agregarAsistente(unAsistente){
		if (unAsistente.tieneDisfraz() && not(self.estaInvitado(unAsistente))){
			invitados.add(unAsistente)
		} else {
			throw new NoPuedeAgregarAsistenteException()
		}
		
	
	}

	method estaInvitado(unInvitado){
		return invitados.contains(unInvitado)
	}


	method esFiestaInolvidable(){
		return invitados.all({unInvitado => unInvitado.esSexy() && unInvitado.estaConformeConSuDisfraz()})
	}
}

object jornada{
	method puedenIntercambiarTrajes(fiesta,asistente1, asistente2){
		return (self.ambosEstanEnLaFiesta(fiesta,asistente1, asistente2)) && (self.algunoEstaDisconforme(asistente1,asistente2)) && (self.intercambiandoEstanConformes(asistente1,asistente2))
		
	}

	method ambosEstanEnLaFiesta(fiesta,asistente1, asistente2){
		return fiesta.tieneInvitado(asistente1) && fiesta.tieneInvitado(asistente2)
	}
	
	method algunoEstaDisconforme(asistente1, asistente2){
		return not(asistente1.estaConfomeConSuDisfraz()) || not(asistente2.estaConformeConSuDisfraz())
	}
	
	method intercambiandoEstanConformes(asistente1,asistente2){
		var disfraz1 = asistente1.disfraz()
		var disfraz2 = asistente2.disfraz()
		return asistente1.estariaConformeCon(disfraz2) && asistente2.estariaConformeCon(disfraz1)
	}

}
