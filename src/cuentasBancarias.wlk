object cuentaCorriente {

	var saldo = 0

	method depositar(importe) {
		saldo += importe
	}

	method extraer(importe) {
		saldo -= importe
	}

	method saldo() {
		return saldo
	}

}

object cuentaConGastos {

	var saldo = 0

	method depositar(importe) {
		saldo = (saldo + importe) - 20
	}

	// Ver si se puede implementar con max y min.
	method extraer(importe) {
		if (importe <= 1000) {
			saldo = (saldo - importe) - 20
		} else {
			saldo = (saldo - importe) - (importe / 50)
		}
	}

	method saldo() {
		return saldo
	}

}

object cuentaCombinada {

	const cuentas = []

	method cuentas() {
		return cuentas
	}

	method agregarCuenta(cuenta) {
		cuentas.add(cuenta)
	}

	method depositar(importe) {
		cuentas.first().depositar(importe)
	}

	method extraer(importe) {
		if (cuentas.first().saldo() >= importe) {
			cuentas.first().extraer(importe)
		} else {
			cuentas.last().extraer(importe)
		}
	}

	method saldo() {
		return cuentas.sum{ cuenta => cuenta.saldo() }
	}

}

