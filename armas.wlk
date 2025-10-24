// ARMAS
class ArmaDeFilo {
  const filo
  const longitud
  method ataque() = filo * longitud  
}

class Contudente {
  const peso 
  method ataque() = peso
}

object casco {
  method armadura(gladiador) = 10 
}
object escudo {
  method armadura(gladiador) = 5 + (gladiador.destreza()*0.1)   
}
