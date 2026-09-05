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
    return bebidaConsumida.rendimientoQueOtorga(dosis) * 490 / peso

  }
}

object whisky {
  method rendimientoQueOtorga(dosisConsumida) {
    return 0.9 ** dosisConsumida 
  }
}

object terere {
  method rendimientoQueOtorga(dosisConsumida) {
    return 1.max(0.1 * dosisConsumida)
  }  
}

object cianuro {
  method rendimientoQueOtorga(dosisConsumida) {
    return if(tito.peso() > 70){return tito.peso() * 0.01 + dosisConsumida} 
           else {return 0}
  }

}