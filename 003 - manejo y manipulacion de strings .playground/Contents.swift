import Foundation

var accountTotal: Float = 1_000_000

let name: String = "francisco Leví"
let lastName: String = "méndez Delgado"

let fullName = "\(name) \(lastName)" // Swift de forma impícita asignar el tipo de dato. Por lo que es posible ignorar el tipo de dato, aunque hay casos en lo que es obligatorio hacerlo de forma explícita.

print(fullName.capitalized)

// Clase 004
/* Si se declara un número decimal sin especificar el tipo de dato se toma por default como Double, es por eso que si se necesita que se declare como Foat hay que realizarlo de forma explícita:
 
 var numeroDecimal = 1_000_000.0 <-- Para indicar que es decimal se agrega el .0 y pr default es Double.
 var numeroDecimal: Float = 1_000_000 <-- Explícitamente si queremos que sea Float y no Double.
 
 No es necesario el .0 si es explícito el tipo de dato.
 
 */

var unDouble = 1_000_000.0
var unFloat: Float = 1_000_000

accountTotal = accountTotal + 100_000 // Forma completa.
print(accountTotal)

accountTotal += 100_000 // Forma corta para simplificar código
print(accountTotal)

// Otra manera de inciar variables de números decimales:
var account = 1e6 // 1 exponente 6, o de forma mortal 1 mas 6 ceros: 1.000.000, un millón.
print(account)


// Clase 005
var isActive = !fullName.isEmpty // Forma implícita para un booleano. Con ! negamos por lo que si isEmpty es true obtendremos false, y por el contrario si devuelve false obtendremos true.
print(isActive)

// Reto: Imprimir en consola un texto similar a: Adrés Silva, 27 años con un saldo de 3.010.030.321 en su cuenta de ahorros.

let nombres:        String = "Francisco Leví"
let apellidos:      String = "Méndez Delgado"
let nombreCompleto: String = "\(nombres) \(apellidos)"
var edad:            UInt8 = 33

var saldo:       Float = 23_582.34
var tipoCuenta: String = "ahorros"

var mensaje: String = "\(nombreCompleto), de \(edad) años, cuenta con un saldo de $\(saldo) en su cuenta de \(tipoCuenta)."

print(mensaje)



