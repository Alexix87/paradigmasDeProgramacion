class Vehiculo{
	var capacidadTanque
	var velocidadPromedio
	var cantidadCombustible = 0
	var perdidaBase = 2

	method esEcologico()

	method velocidadPromedio() = velocidadPromedio
	
	method recorrer(distancia){
		cantidadCombustible -= perdidaBase + self.perdidaExtra(distancia)
	}
	method perdidaExtra(distancia)
	
	method recargarTanque(cantidadLitrosARecargar){
		const litrosTotales = cantidadCombustible + cantidadLitrosARecargar
		
		if (litrosTotales <= capacidadTanque){
			cantidadCombustible += cantidadLitrosARecargar
			return cantidadLitrosARecargar
		}else{
			cantidadCombustible = capacidadTanque
			return litrosTotales-capacidadTanque	
		}	
	}
}

class Camioneta inherits Vehiculo(capacidadTanque= 20, velocidadPromedio= 70, perdidaBase= 4){
	
	override method esEcologico() = false

	override method perdidaExtra(distancia){
		return distancia*5 
	}
}

class Deportivo inherits Vehiculo(capacidadTanque= 40, velocidadPromedio= 100){
	
	override method esEcologico(){
		return velocidadPromedio < 120
	}
	
	override method perdidaExtra(distancia){
		return velocidadPromedio*0.2
	}
}

class Familiar inherits Vehiculo(capacidadTanque= 15, velocidadPromedio= 50){
	
	override method esEcologico() = true
	
	override method perdidaExtra(distancia) = 0
}