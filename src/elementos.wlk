class Maquillaje {
	
	method capacidadDeSusto(){
		return 3
	}
}

class Traje {
	var tipoDePersonaje
	
	method capacidadDeSusto(){
		return tipoDePersonaje.nivelDeMiedo()
	}
}

//-----------------------------------------------------------
object tierno{
	method nivelDeMiedo(){
		return 2
	}
}

object terrorifico{
	method nivelDeMiedo() = return 5
}
