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

