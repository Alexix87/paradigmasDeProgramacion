import errores.DineroInsuficienteException
import errores.SaldoInsuficienteException

class Usuario {
	var nombreDeUsuario
	var dni
	var dinero
	var vehiculoAsociado
	const precioPorLitro = 40
	const multas = []
		
	method multar (unaMulta){
		multas.add(unaMulta)
	}
		
	method recorrer(distancia){
		vehiculoAsociado.recorrer(distancia)
	}

	method recargarCombustible(unaCantidad){
		if ((precioPorLitro*unaCantidad) > dinero ){ 
			throw new DineroInsuficienteException()	
		}
		
		const litrosCargados = vehiculoAsociado.recargarTanque(unaCantidad)
		
		dinero -= litrosCargados * precioPorLitro	
	}

	method quitarDinero(unaCantidad){
		if (unaCantidad > dinero){
			throw new SaldoInsuficienteException()
		}
		dinero -= unaCantidad
	}

	method velocidadPromedioDeSuVehiculo(){
		return vehiculoAsociado.velocidadPromedio()
	}
	
	method tieneVehiculoEcologico(){
		return vehiculoAsociado.esEcologico()
	}

	method esComplicado(){
		return self.cantidadDeDeudaEnMultas() > 5000
	}
	
	method cantidadDeDeudaEnMultas(){
		return multas.filter({unaMulta => not(unaMulta.estaPaga())}).map({unaMulta => unaMulta.costo()}).sum()
	}
	
	method pagarMultas(){
		multas.forEach({unaMulta => unaMulta.pagar(self)})
	}
		
}

