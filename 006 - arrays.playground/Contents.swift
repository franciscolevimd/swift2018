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

print(transactions)

transactions.first
transactions.last

transactions.removeLast()
print(transactions)

//transactions.removeFirst()
//transactions.removeAll()

transactions.min()
transactions.max()

// Clase 007. Matrice.

var dailyTransaction:[[Float]] = [
    [20, 10, 100],
    [],
    [1000],
    [],
    [10]
]

dailyTransaction.first
dailyTransaction[0]
dailyTransaction[1].isEmpty
dailyTransaction[2].isEmpty
dailyTransaction[3].isEmpty
dailyTransaction[4].isEmpty


// Clase 008. Diccionarios.
var transactionsDict: [String: [Float]] = [
    "1nov": [20, 10, 100],
    "2nov": [],
    "3nov": [1000],
    "4nov": [],
    "5nov": [10]
]

print(transactionsDict["1nov"])
print(transactionsDict["5nov"]) // Optional quiere decir que puede estar o no.

print(transactionsDict.keys)
print(transactionsDict.values)
print(transactionsDict.isEmpty)
print(transactionsDict.count)

