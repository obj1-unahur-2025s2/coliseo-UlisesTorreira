import armas.*

class Mirmillon{
    var vida = 100 
    const fuerza
    var arma
    var armadura = casco
    method cabiarAramdura(otraArmadura){armadura = otraArmadura}
    method cambiarArma(otraArma){arma = otraArma}

    method destreza() = 15
    method ataca(gladiador){gladiador.recibirAtaque(self.daño(gladiador))}
    method daño(gladiador) = self.poderAtaque() - gladiador.defensa()  
    method recibirAtaque(daño){vida - daño}
    method poderAtaque() = arma.poder() + fuerza
    method defensa() = armadura.armadura(self) + self.destreza()  
}

class Dimachaerus {
    var vida = 100
    var arma = []
    var destreza
    method fuerza() = 10
    method agregarArmas(unArma){
        arma.add(unArma)
    }
    method ataca(gladiador) {
      gladiador.recibirAtaque(self.daño(gladiador))
      destreza = destreza + 1
    }
    method daño(gladiador) = self.poderAtaque() - gladiador.defensa()
    method recibirAtaque(daño){ vida - daño}
    method poderAtaque() = self.fuerza() + arma.sum({a=>a.poder()})
    method defensa() = destreza / 2 
}
