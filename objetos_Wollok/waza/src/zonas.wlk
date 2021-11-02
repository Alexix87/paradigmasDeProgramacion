class Zona {
	var velocidadMaximaPermitida
	var usuariosEnZona = #{}
	var controles = []
	
	method activarControles(){
		controles.forEach({unControl => unControl.activarSobreUsuariosEnZona(usuariosEnZona,self)})
	}
	
	method cantidadUsuarios(){
		return usuariosEnZona.size()
	}
}
