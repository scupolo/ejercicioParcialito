/** First Wollok example */
object pamela {
	const botiquin=["algodon","aguaOxigenada","cintaDePapel","cintaDePapel"]
	var energia=6000
	
	method lucharManoAManoConEnemigo(enemigo){
		energia+=400
		}
	method gritoDeVictoria(){
		return "Aca paso la Pamela"
	}
	
	method energia(){
		return energia
	}
	
	method cantidadDeElementosQueTiene(){
		return botiquin.size()
	}	
	
	method objetos()=botiquin
	
	method quitarEnergia(valor){
		energia -= valor
	}	
	method lucharContraElEquipo(equipo){
	equipo.forEach{contricante=>self.lucharManoAManoConEnemigo(contricante)}
}
}

/**  */

object pocardo{
	const botiquin= ["guitarra","curitas","cotonetes"]
	var energia =5600
	
	method gritoDeVictoria(){
		return "Siente el poder de la musica"
	}
	method lucharManoAManoConEnemigo(enemigo){
		energia+=500
		}
	method energia(){
		return energia
	}	
	method cantidadDeElementosQueTiene(){
		return botiquin.size()
	}	
	method objetos(){
		return botiquin
	}	
	method quitarEnergia(valor){
		energia-=valor
	}	
	method lucharContraElEquipo(equipo){
	equipo.forEach{contricante=>self.lucharManoAManoConEnemigo(contricante)}
}
}
/**  */


object tulipan{
	var energia = 8400
	const galpon=["rastrillo","maceta","maceta","manguera"]
	
method lucharManoAManoConEnemigo(enemigo){
	enemigo.quitarEnergia((enemigo.energia())*0.5)
}

method gritoDeVictoria(){
		return "Hora de cuidar a las plantas"
	}	
	method cantidadDeElementosQueTiene(){
		return galpon.size()
	}
	method objetos(){
		return galpon
	}		
	method quitarEnergia(valor){
		energia -=valor
	}	
	method lucharContraElEquipo(equipo){
	equipo.forEach{contricante=>self.lucharManoAManoConEnemigo(contricante)}
}
}


/** */

object toro{
const botin=[]
var energia =7800

method gritoDeVictoria(){
		return "No se metan con el toro"
		}	
	
method lucharManoAManoConEnemigo(enemigo){
	enemigo.quitarEnergia(200*enemigo.cantidadDeElementosQueTiene())	
	botin.add(enemigo.objetos().last())
	
}
method eliminarObjeto(enemigo)
    {enemigo.objetos().remove(enemigo.objetos().last())
    }    
    

method lucharContraElEquipo(equipo){
	equipo.forEach{contricante=>self.lucharManoAManoConEnemigo(contricante)}
}
}




