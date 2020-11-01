class Legion {
	var integrantes
	
	//PUNTO B.1 (Lo vimos esto?)
	constructor(grupoNinios){
		if(grupoNinios.size() >= 2)
		{
			new Legion(integrantes = grupoNinios)
		}
		else
		{
			throw new Exception(message = "No se pudo crear la legion")
		}
	}
	
	method lider(){
		return integrantes.flatMap( {ninio => ninio.cantidadCaramelos()} ).max()
	}
	
	//Se hace flatMap() porque se aclara que un integrante puede ser una legion. Entonces aplanamos todos los elementos en una sola lista que 
	//contenga la cantidadCaramelos() y despues se saca el valor maximo. Si es solamente una lista de niños, no pasa nada y mapea la 
	//cantidadCaramelos() y hace max()
	
	method capacidadSusto(){
		return integrantes.flatMap( {ninio => ninio.capacidadSusto()} ).sum()
	}
	
	method cantidadCaramelos(){
		return integrantes.flatMap( {ninio => ninio.cantidadCaramelos()} ).sum()
	}
	
	//PUNTO B.2
	method intentarAsustarA(unAdulto){
		const elLider = self.lider()
		unAdulto.seAsustoCon(elLider)
	}	
}
