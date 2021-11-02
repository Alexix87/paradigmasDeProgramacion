import multas.*

class Control{
	method activarSobreUsuariosEnZona(usuarios,zona){
		usuarios.forEach({unUsuario => self.aplicarControl(unUsuario,zona)})
	}
	
	method aplicarControl(unUsuario,zona)
}

class ControlDeVelocidad inherits Control{
	method aplicarControl(unUsuario,zona){
		if (unUsuario.velocidadPromedioDeSuVehiculo() > zona.velocidadMaximaPermitida()){
			unUsuario.multar( new Multa (costo= 3000) )
		} 
	}	
}

class ControlEcologico inherits Control{
	method aplicarControl(unUsuario,zona){
		if (not(unUsuario.tieneVehiculoEcologico())){
			unUsuario.multar( new Multa (costo= 1500) )
		}
	}	
}

class ControlRegulatorio inherits Control{
	method aplicarControl(unUsuario,zona){
		
	}	
}
/*
● Regulatorios: Estos controles aparecieron durante la cuarentena pero siguen
presentes hasta el día de hoy. Los días del mes pares sólo los usuarios con dni par
pueden moverse, lo mismo para los días impares2. En caso de infringir esta norma
se crea una multa de $2000. */