import Foundation

var accountTotal: Float = 1_000_000

let name:     String = "francisco Leví"
let lastName: String = "méndez Delgado"
let fullName = "\(name) \(lastName)"

var isActive = !fullName.isEmpty
print(isActive)

var transactions: [Float] = [20, 10, 100] // Forma explícita de declarar el tipo de datos que contendrá el array.
//var transactions = [20, 10, 100.0] // Forma implícita, solo es necesario que un dato sea decimal; por defecto la forma implícita es Double.
print(transactions)

transactions.count
transactions.isEmpty // Más eficiente que count.

transactions.append(40)


// Clase 007. Matrice.

var dailyTransaction:[[Float]] = [
    [20, 10, 100],
    [],
    [1000],
    [],
    [10]
]

// Clase 008. Diccionarios.
var transactionsDict: [String: [Float]] = [
    "1nov": [20, 10, 100],
    "2nov": [],
    "3nov": [1000],
    "4nov": [],
    "5nov": [10]
]

// Clase 009. If, else, else if, Inline If.

print(accountTotal)

accountTotal -= 300_000

if accountTotal > 0
{
    print("Tenemos dinerito, si dinerito")
}
else if accountTotal > 1_000_000
{
    print("¡Somos ricos, hurra!")
}
else
{
    print("Somos pobres, ayyy =(")
}

accountTotal += 500_000

let hasMoney: String = accountTotal > 1_000_000 ? "¡Somos ricos, hurra!" : "Tenemos dinerito, si dinerito"
print(hasMoney)

// Clase 010. Switch

var age = 24
var tax: Float = 1

switch age
{
case 0...17:
    print("No podemos dar una tarjeta de crédito")
case 18...22:
    tax = 2
    print("La tasa de interés es del 2%")
case 22...25:
    tax = 1.5 // Debe ser declarado como float.
    print("La tasa de interés es del 1.5%")
default:
    print("La tasa de interés es del 1%")
}

let bankType = "B"

switch bankType
{
case "B":
    print("Es el banco B")
default:
    print("Es otro banco")
}

// Clase 011. For y While

var total: Float = 0

for transaction in transactions
{
    total += (transaction * 100)
}

print(total)
print(accountTotal)
accountTotal -= total
print(accountTotal)

var total2: Float = 0

for key in transactionsDict.keys
{
    for transaction in transactionsDict[key] ?? [] // Como es un optional hay que indicar que si no hay un array devolver uno vacío. Unwrapping
    {
        total2 += transaction
    }
}

print(transactionsDict)
print(total2)

// Clase 012. Opcionales, Guard, If guard

// Un optional es un valor que puede exsitri en cualquier momento.
var nombre: String? = nil // Se declara con un ? y por default vale nil.

//print(nombre) // Marca un warning, y lo que se puede hacer es aplicar que hacer en caso de que este valor sea nil -->

print(nombre ?? "El nombre es vacío")

// Cuando el optional tiene un valor, osea que no es nil, este se considera literalmente como un objeto Optional.
nombre = "Junchito"
print(nombre)
// Lo cual se puede solucionar usando !, siempre y cuando el valor no sea nil.
print(nombre!) // Forced unwrapping

nombre = nil

if let nombre = nombre
{
    print(nombre)
}
//nombre = nil
//
//guard let nombre = nombre else
//{
//    print("no hay")
//    return
//}




// Clase 013. For Where

total2 = 0

for key in transactionsDict.keys
{
    for transaction in transactionsDict[key]! where transaction < 20 // Forzarlo con !
    {
        total2 += transaction
    }
}

print(transactionsDict)
print(total2)

