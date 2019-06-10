import wollok.game.*
import farmville.*



class Tomaco {
	
	var property image = "tomaco_baby.png"
	
	method crecer(){game.removeVisual(self)
					
					game.addVisualIn("tomaco.png" ,hector.position())
	}
	
	method puedeSerCosechada(){
		//solo cumple con el polimorfismo 
	}
	
	method precio(){return 80}
					
}

class Maiz {
	var property  image = "fence01.png"
	
		method crecer(){game.removeVisual(self)
						game.addVisualIn("fence02",hector.position())
						self.image("fence02")
		}
		/////////////////////////////////////////////////////////
		
		//determina un bool si esta planta es lo suficientemente madura
		method puedeSerCosechada(){return self.image() == "fence02" }
		
		method precio(){return 150 }
}

class Trigo {
	var property  imagenes = ["wheat_0.png","wheat_1.png","wheat_2.png","wheat_3.png"]
	var property image = "wheat_0.png"
	
	method crecer(){ if (self.etapa() = 1){ }
		
	}
	method etapa() = if (self.image() == "wheat_2.png") {
						 2
					}else if (self.image() == "wheat_3.png"){ 3 }  else 1 
	
	
	
	
	method precio(){(self.etapa() - 1) * 100}
}