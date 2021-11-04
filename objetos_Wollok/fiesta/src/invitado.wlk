class Invitado {
	var disfraz
	var edad
	var personalidad
	
	method disfraz() = disfraz

	method tieneDisfraz(){
		return disfraz.esDisfraz()
	}
		
	method disfrazarseDe(unDisfraz){
		disfraz = unDisfraz
	}
	
	method puntajeDeDisfraz(){
		return disfraz.puntajeDeDisfrazSobre(self)
	}
	
	method estaConformeConSuDisfraz(){
		return self.estariaConformeCon(disfraz)
	}
	
	method estariaConformeCon(unDisfraz){
		return (unDisfraz.puntajeDeDisfrazSobre(self) > 10) && (self.condicionExtraDeConformismo())
	}
	
	method condicionExtraDeConformismo()
	
	method esMayorDe(unaEdad){
		return edad > unaEdad
	}	
}
 
 class Caprichoso inherits Invitado{
	method condicionExtraDeConformismo(){
		return disfraz.tieneNombreConCantidadDeLetrasPar()
		}
 }
 
 class Pretencionso inherits Invitado{
 	method condicionExtraDeConformismo(){
 		return disfraz.fueConfeccionadoHaceMenosDe(30)	
 	}
 }
 
 class Numerologos inherits Invitado{
 	var cifraDeConformismo
 	
 	method condicionExtraDeConformismo(){
 		return disfraz.tienePuntaje(cifraDeConformismo,self)
 	}
 }