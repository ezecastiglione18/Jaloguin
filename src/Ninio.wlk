class Ninio {
	var property elementos
	var property cantidadCaramelos
	var actitudNinio
	
	//PUNTO A.1
	method capacidadSusto(){
		return self.sumatoriaSustoElementos() * actitudNinio
	}
	
	method sumatoriaSustoElementos(){
		return elementos.sum( {elemento => elemento.capacidadDeSusto()} )
	}
	
	//PUNTO A.2
	method intentarAsustarA(unAdulto){
		unAdulto.seAsustoCon(self)
	}
	
	method sumarCaramelos(unaCantidad){
		cantidadCaramelos += unaCantidad
	} 
	
	method verificarCantidadDeCaramelos(unAdulto){
		if(cantidadCaramelos > 15){
			unAdulto.sumarUnNinio()
		}
	}
	
	//PUNTO D.1
	method comerCaramelos(unaCantidad){
		if(self.puedeComerCiertaCantidad(unaCantidad)){
			cantidadCaramelos -= unaCantidad
		}
		else
		{
			throw new Exception(message = "No puede comer esa cantidad")
		}
	}
	
	method puedeComerCiertaCantidad(unaCantidad) = return cantidadCaramelos - unaCantidad > 0 
}
