import personas.*

object combate{
	
	method unEquipo(){ 
	return [toro,pamela]
	}
	
	method otroEquipo(){
		return [toro,tulipan]
	} 
	
	method combate(unEquipo,otroEquipo){
		unEquipo.forEach({persona => persona.lucharContraElEquipo(unEquipo)})
		otroEquipo.forEach({persona => persona.lucharContraElEquipo(otroEquipo)})
	}
	
	method energiaDelEquipo(unEquipo){
		return unEquipo.sum({persona => persona.energia()})
	}
	
	method gritoVictorioso(unEquipo){
		return unEquipo.map({persona=> persona.gritoDeVictoria()})
	}
	
	method gritosVictoriosos(){
		self.combate(unEquipo,otroEquipo)
		if (self.energiaDelEquipo(unEquipo) > self.energiaDelEquipo(otroEquipo)){
			return self.gritoVictorioso(unEquipo)
		} else if (self.energiaDelEquipo(unEquipo) < self.energiaDelEquipo(otroEquipo)){
			return self.gritoVictorioso(otroEquipo)
		} else {
			return "Empate"
		}
	}
	
	
	
}