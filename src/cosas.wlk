object heladera {
	method precio() { return 20000 }
	method esComida() { return false }
	method esElectrodomestico() { return true }	
}

object cama {
	method precio() { return 8000 }
	method esComida() { return false }
	method esElectrodomestico() { return false }	
}

object tiraDeAsado {
	method precio() { return 350 }
	method esComida() { return true }
	method esElectrodomestico() { return false }	
}

object paqueteDeFideos {
	method precio() { return 50 }
	method esComida() { return true }
	method esElectrodomestico() { return false }	
}

object plancha {
	method precio() { return 1200 }
	method esComida() { return false }
	method esElectrodomestico() { return true }	
}

object milanesas {
	method precio() { return 260 }
	method esComida() { return true }
	method esElectrodomestico() { return false }
}

object salsaTomate {
	method precio() { return 90 }
	method esComida() { return true }
	method esElectrodomestico() { return false }
}

object microondas {
	method precio() { return 4200 }
	method esComida() { return false }
	method esElectrodomestico() { return true }
}

object kiloCebollas {
	method precio() { return 25 }
	method esComida() { return true }
	method esElectrodomestico() { return false }
}

object dolar {
	method precioDeVenta() { return 45 }
}

object compu {
	method precio() { return 500 * dolar.precioDeVenta() }
	method esComida() { return false }
	method esElectrodomestico() { return false }
}

// Revisar
object packComida {
	var platos = [tiraDeAsado, paqueteDeFideos, milanesas]
	var aderezos = [salsaTomate, kiloCebollas]
	var pack = [platos.anyOne(), aderezos.anyOne()]

	method precio() { return pack.sum{ comida => comida.precio() } }
	method esComida() { return true }
	method esElectrodomestico() { return false }
}

