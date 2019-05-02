import cosas.*
import cuentasBancarias.*

object casaDePepeYJulian {

	const cosas = []
	var property cuenta

	/*
	 * Devuelvo una lista de las cosas que hay en la casa.
	 */
	method cosas() {
		return cosas
	}

	/*
	 * Registra que se ha comprado una cosa.
	 */
	method comprar(cosa) {
		cosas.add(cosa)
		self.gastar(cosa.precio())
	}

	/*
	 * Devuelve la cantidad de cosas que hay en la casa.
	 */
	method cantidadDeCosasCompradas() {
		return cosas.size()
	}

	/*
	 * Indica si compró algo que es comida al menos una vez.
	 */
	method tieneComida() {
		return cosas.any{ cosa => cosa.esComida() }
	}

	/*
	 * Indica si la última cosa que se compró es un electrodoméstico, o bien vale más de 5000 pesos.
	 */
	method vieneDeEquiparse() {
		return cosas.last().esElectrodomestico() or cosas.last().precio() > 5000
	}

	/*
	 * Indica si el importe total de las cosas compradas es de 9000 pesos o más.
	 */
	method esDerrochona() {
		return cosas.sum{ cosa => cosa.precio() } >= 9000
	}

	/*
	 * Retorna la cosa comprada de mayor valor.
	 */
	method compraMasCara() {
		return cosas.max{ cosa => cosa.precio() }
	}

	/*
	 * Devuelve un objeto que contiene todas las cosas compradas que son electrodomésticos.
	 */
	method electrodomesticosComprados() {
		return cosas.filter{ cosa => cosa.esElectrodomestico() }
	}

	/*
	 * Indica si todas las cosas compradas son comida.
	 */
	method malaEpoca() {
		return cosas.all{ cosa => cosa.esComida() } and not cosas.isEmpty()
	}

	/*
	 * Recibe una lista de cosas y devuelve las cosas de esa lista que aún no se han comprado.
	 */
	method queFaltaComprar(lista) {		
		return (lista.asSet().difference(cosas.asSet())).asList()
	}
	
	/*
	 * Indica si se han comprado menos de 2 cosas que son comida.
	 */
	method faltaComida() {
		return cosas.count{ cosa => cosa.esComida() } < 2
	}
	
	/*
	 * Cuentas bancarias.
	 */
	
	method gastar(importe) {
		cuenta.extraer(importe)
	}
	
	method dineroDisponible() {
		return cuenta.saldo()
	}

}

