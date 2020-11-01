class Barrio {
	const nombre
	var habitantes
	
	//PUNTO C.1
	method losTresNiniosConMasCaramelos(){
		return self.habitantesPorCantidadDeCaramelos().take(3)
	}
	
	method habitantesPorCantidadDeCaramelos(){
		return habitantes.sortBy( {ninio1, ninio2 => ninio1.cantidadCaramelos() > ninio2.cantidadCaramelos()} )
	}
	
	//PUNTO C.2
	method losElementosUsadosSinRepetir(){
		return self.losElementosMasUsados().asSet()
	}
	
	method losElementosMasUsados(){
		return self.niniosConMasDe10Caramelos().flatMap( {ninio => ninio.elementos()} )
	}
	
	method niniosConMasDe10Caramelos(){
		return habitantes.filter( {ninio => ninio.cantidadCaramelos() > 10} )
	}
}
