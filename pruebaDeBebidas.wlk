object tito {

  var peso = 70
  var bebidaConsumida = whisky
  var dosis = 10 

  method consumir(cantidad, bebida){
      bebidaConsumida = bebida
      dosis = cantidad
  }

  method peso()= a


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
    return 0.1 ** dosisConsumida
  }  
}

object cianuro {
  
}