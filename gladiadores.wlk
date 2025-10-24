import armas.*
import grupos.*
// CLASES LUCHADORES
class Mirmillon {
  var vida = 100
  const fuerza 
  var arma
  var armadura
  method vida() = vida
  method cambiarArmadura(otraArmadura) {armadura = otraArmadura}
  method cambiarArma(otraArma){arma = otraArma}
  method destreza() = 15
  method ataca(atacado){atacado.recibirAtaque(self.daño(atacado))}
  method daño(atacado) = self.poderAtaque()- atacado.defensa()
  method recibirAtaque(danio) {vida = vida - danio}
  method poderAtaque() = arma.poder() + fuerza
  method defensa() = armadura.armadura(self)+ self.destreza()

  method crearGrupo(otroGladiador){
    const grupo = new Grupo(nombre= "Mirmillolandia")
    grupo.agregarMiembro(self)
    grupo.agregarMiembro(otroGladiador)
  }
  method recuperaVidas(cantidad) {
    vida = cantidad
  }
}

class Dimachaerus {
  var vida = 100
  var armas = []
  var destreza
  method vida() = vida
  method fuerza() = 10
  method agragarArmas(unArma) {
    armas.add(unArma)
  }
  method ataca(atacado){
    atacado.recibirAtaque(self.daño(atacado)) 
    destreza = destreza + 1
  }
  method daño(atacado) = self.poderAtaque()- atacado.defensa()
  method recibirAtaque(daño) {vida = vida - daño}
  method poderAtaque() = self.fuerza() + armas.sum({ a => a.poder() })
  method defensa()= destreza / 2

  method crearGrupo(otroGladiador){
    const nombre = "D-" + (self.poderAtaque() + otroGladiador.poderAtaque()).toString()
    const grupo = new Grupo(nombre= nombre)
    grupo.agregarMiembro(self)
    grupo.agregarMiembro(otroGladiador)
  }
  method recuperaVidas(cantidad) {
    vida = cantidad
  }
}