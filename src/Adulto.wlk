class AdultoComun {
	var contadorDeNinios
	
	method puedeSerAsustadoPor(unNinio){
		return self.nivelTolerancia() < unNinio.capacidadSusto()
	}
	
	method nivelTolerancia() = 10 * contadorDeNinios
	
	method seAsustoCon(unNinio){
		if(self.puedeSerAsustadoPor(unNinio)){
			unNinio.sumarCaramelos(self.cantidadDeCaramelosAEntregar())
		}
		else
		{
			unNinio.verificarCantidadDeCaramelos(self)
		}
	}
	
	method cantidadDeCaramelosAEntregar() = return self.nivelTolerancia() / 2
	
	method sumarUnNinio() = contadorDeNinios++	
}

class Abuelo inherits AdultoComun{
	override method puedeSerAsustadoPor(unNinio) = return true
	
	override method cantidadDeCaramelosAEntregar() = return super() / 2
}

class AdultoNecio inherits AdultoComun {
	override method puedeSerAsustadoPor(unNinio) = return false
}
