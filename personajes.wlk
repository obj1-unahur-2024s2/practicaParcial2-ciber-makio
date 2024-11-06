class Personaje{
  const property fuerza 
  
  var property rol 
  method potencialOfensivo()= fuerza * 10 + rol.extra()
  method esGroso() = self.esInteligente() or rol.esGroso(self)
  method esInteligente()
}

class Orco inherits Personaje{
  override method potencialOfensivo()= super() * 1.1
  override method esInteligente() = false
}

class Humano inherits Personaje{
  const  inteligencia = 100
   override method esInteligente() = inteligencia > 50
}
class Mascota{
  const fuerza
  const edad = 1
  const tieneGarras = true
  method poder() = fuerza * if(tieneGarras) 2 else 1
  method esLongeva() = edad > 10
}
class Cazador{
const mascota 

method extra()= mascota.poder()
method esGroso(quien) = mascota.esLongeva()
}
object guerrero{
  method extra() = 100
  method esGroso(quien) = quien.fuerza() > 10

}
object brujo{
  method extra() = 0
  method esGroso(quien) = true
}

