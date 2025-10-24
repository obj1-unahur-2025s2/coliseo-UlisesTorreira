import grupos.*
// COMBATE Y CURACION EN EL COLISEO
object coliseo{
    method hacerCombatir(unGrupo, unGladiador){
        unGrupo.ataca(unGladiador)
        unGladiador.ataca(unGrupo)
    }
    method curar(gladiador){
        gladiador.recuperarVidas()
    }
}