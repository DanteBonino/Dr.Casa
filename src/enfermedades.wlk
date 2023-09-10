const malaria800 = new EnfermedadInfecciosa(
	celulasAmenazadas = 800
)

const malaria500 = new EnfermedadInfecciosa(
	celulasAmenazadas = 500
)

const otitis100 = new EnfermedadInfecciosa(
	celulasAmenazadas = 100
)


class EnfermedadInfecciosa inherits Enfermedad{
	
	method reproducir(){
		celulasAmenazadas *= 2
	}
	
	method afectar(unaPersona){
		const gradosAAumentar = self.celulasAmenazadas()/1000
		unaPersona.aumentarTemperatura(gradosAAumentar)
	}
	
	method esAgresiva(unaPersona){
		return self.celulasAmenazadas() > (unaPersona.celulas() * 0.1)
	}
}

const lupus = new EnfermedadAutoInmune(
	celulasAmenazadas = 10000
)

class EnfermedadAutoInmune inherits Enfermedad{
	var cantidadDeVecesQueActuo = 0
	
	method afectar(unaPersona){
		unaPersona.reducirCelulas(self.celulasAmenazadas())
		cantidadDeVecesQueActuo ++
	}
	method esAgresiva(unaPersona){
		return cantidadDeVecesQueActuo > 30
	}
}

class Enfermedad{
	var property celulasAmenazadas
}

