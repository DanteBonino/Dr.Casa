import enfermedades.*

const frank = new Persona(
	celulas = 3500000
)

class Persona{
	const property enfermedades = #{}
	var property temperatura = 36
	var property celulas 
	
	method contraerEnfermedad(unaEnfermedad){
		enfermedades.add(unaEnfermedad)
	}
	method vivirUnDia(){
		enfermedades.forEach{unaEnfermedad => unaEnfermedad.afectar(self)}
	}
	method aumentarTemperatura(cantidadDeGrados){
		temperatura = (temperatura + cantidadDeGrados).min(45)
	}
	method enfermedadMasAmenazante(){
		return enfermedades.max{unaEnfermedad => unaEnfermedad.celulasAmenazadas()}
	}
	method estaEnComa(){
		return self.temperaturaCritica() || self.cantidadCelulasCritica()
	}
	
	method temperaturaCritica(){
		return temperatura == 45
	}
	
	method cantidadCelulasCritica(){
		return celulas < 1000000
	}
	
	method celulasAfectadasPorEnfermedadesAgresivas(){
		return self.enfermedadesAgresivas().sum{unaEnfermedad => unaEnfermedad.celulasAmenazadas()}
	}
	
	method enfermedadesAgresivas(){
		return enfermedades.filter{unaEnfermedad => unaEnfermedad.esAgresiva()}
	}
	
	method reducirCelulas(unaCantidad){
		celulas -= 0.max(celulas-unaCantidad)
	}
}


const logan = new Persona(
	celulas = 3000000,
	enfermedades = #{}
)