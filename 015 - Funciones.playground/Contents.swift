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

// Clase 013. For Where

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
    for transaction in transactionsDict[key]! where transaction < 20 // Forzarlo con !
    {
        total2 += transaction
    }
}

print(transactionsDict)
print(total2)



// Clase 014. Manejo de Arrays

var total3 = transactions.reduce(0.0) { (result, element) -> Float in
    return result + element
}

print(transactions)
print(total3)


print(transactions.reduce(0.0, { return $0 + $1 })) // Lo mismo pero mas resumido

print(transactions.reduce(0.0, { $0 + $1 })) // ¿Podrá reducirse mas?

print(transactions.reduce(0.0, +)) // Nu ma, si se pudo.

// Transformando el array
var newTransactions = transactions.map { (element) -> Float in
    return element * 100
}
print(newTransactions)


// Se puede hacer un orden específico del array
print(transactions.sorted(by: { (element1, element2) -> Bool in
    return element1 > element2
}))

print(transactions.sorted(by: >)) // Reducción al máximo

// Creamos filtros
print(transactions.filter { (element) -> Bool in
    return element > 10
})

print(transactions.filter {$0>10}) // Reducida


// Podemos simplificar usando where.
transactions.removeAll(where : {
    $0 > 10
})

print(transactions)
print("\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n")



// Reto clase 014
print(transactionsDict)
print( transactionsDict.reduce(0.0) { $0 + $1.value.reduce(0.0, +) } )

// FUNCIONES

// Clase 015: Definicion

/* Cápsulas de código que nos permiten reutilizar partes de código que ya hemos hecho con funcionalidades muy específicas, y agruparlos dentro de un elemento que podemos estar llamando constantemente.
 
 - Eviatmos repetir código.
 */
 
 func totalAccount()
 {
    var total: Float = 0
    
    for key in transactionsDict.keys
    {
        let array = transactionsDict[key]!
        total += array.reduce(0.0, +)
    }
    print(total)
}

totalAccount()

