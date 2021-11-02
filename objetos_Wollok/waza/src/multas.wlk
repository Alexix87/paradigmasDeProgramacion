import errores.LaMultaYaEstabaPagaException
import errores.UsuarioNoTieneSuficienteDineroException
import errores.SaldoInsuficienteException
import usuarios.*

class Multa {
	var costo
	var estaPaga = false
	
	method costo() = costo
	method estaPaga() = estaPaga
	
	method pagar(unUsuario){
		if (estaPaga){
			throw new LaMultaYaEstabaPagaException()
		}
		
		try{
			unUsuario.quitarDinero(costo)
			estaPaga = true
		} catch e: SaldoInsuficienteException{
			costo += costo/10
			throw new UsuarioNoTieneSuficienteDineroException()
			} 	
		}	
}
