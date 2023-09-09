const malaria800 = new EnfermedadInfecciosa(
	celulasAmenazadas = 800
)

const malaria500 = new EnfermedadInfecciosa(
	celulasAmenazadas = 500
)

const otitis100 = new EnfermedadInfecciosa(
	celulasAmenazadas = 100
)


class EnfermedadInfecciosa{
	var property celulasAmenazadas
	
	method reproducir(){
		celulasAmenazadas *= 2
	}
	
	method afectar(unaPersona){
		const gradosAAumentar = celulasAmenazadas/1000
		unaPersona.aumentarTemperatura(gradosAAumentar)
	}
	
	method esAgresiva(unaPersona){
		return celulasAmenazadas > (unaPersona.celulas() * 0.1)
	}
}

object lupus{
	var property celulasAmenazadas = 10000
	method afectar(unaPersona){
		unaPersona.reducirCelulas(celulasAmenazadas)
	}
}

class EnfermedadAutoInmune{
	var property celulasAmenazadas
	method afectar(unaPersona){
		unaPersona.reducirCelulas(celulasAmenazadas)
	}
	method esAgresiva(unaPersona){
		/* ?? */
	}
}