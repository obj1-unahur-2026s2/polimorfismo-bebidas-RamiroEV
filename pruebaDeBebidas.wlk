object tito {

  var peso = 70
  var bebidaConsumida = whisky
  var dosis = 10 

  method peso() = peso
  method cambiarPeso(nuevoPeso) {peso=nuevoPeso}

  method consumir(cantidad, bebida){
      bebidaConsumida = bebida
      dosis = cantidad
  }

  method velocidad() {
    return bebidaConsumida.rendimientoQueOtorga(dosis,self) * 490 / peso

  }
}

object pepe {
  var peso = 80
  var bebidaConsumida = whisky
  var dosis = 10
  var edad = 30

  method peso() = peso
  method cambiarPeso(nuevoPeso) {peso=nuevoPeso}
  method cumplirAnios()= edad + 1

  method consumir(cantidad, bebida){
      bebidaConsumida = bebida
      dosis = cantidad
  }

  method velocidad() {
    return bebidaConsumida.rendimientoQueOtorga(dosis,self) * 490 / peso - if(edad>30) 10 else 0
  }
}

object whisky {
  method rendimientoQueOtorga(dosisConsumida, unDeportista) {
    return 0.9 ** dosisConsumida 
  }
}

object terere {
  method rendimientoQueOtorga(dosisConsumida, unDeportista) {
    return 1.max(0.1 * dosisConsumida)
  }  
}

object cianuro {
  method rendimientoQueOtorga(dosisConsumida, unDeportista) {
    return if(unDeportista.peso() > 70){return unDeportista.peso() * 0.01 + dosisConsumida} else {return 0}
  }

}