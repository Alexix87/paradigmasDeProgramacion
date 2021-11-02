object sistemaPrincipal {
	const usuarios = []
	const zonas = []
	
	method pagarMultas(){
		usuarios.forEach({unUsuario => unUsuario.pagarMultas()})
	}	
	
	method zonaMasTransitada(){
		return zonas.max({zona => zona.cantidadUsuarios()})
	}
	
	method usuariosComplicados(){
		return usuarios.filter({unUsuario => unUsuario.esComplicado()})
	}
}
/*
● Pagar multas: la aplicación le va a pedir a los usuarios que paguen sus multas. Un
usuario va a pagar las multas que pueda con el dinero que posee en ese momento.
Las multas que no puedan ser pagadas aumentaran su costo en un 10% por pago
retrasado. Este aumento se dará cada vez que no se puedan pagar.
● Obtener la zona más transitada, es decir, aquella que tenga la mayor cantidad de
usuarios.
● Saber qué usuarios son complicados, es decir, aquellos que tienen más de $5000 en
multas sin pagar. */