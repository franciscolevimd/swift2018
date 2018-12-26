/**
 *
 * |---------------------------------------------------------------------------------------------|
 * | Tipo de dato | Símbolo   | Descripción                                     | Ejemplo        |
 * |--------------|-----------|-------------------------------------------------|----------------|
 * | Booleano     | Bool      | Representa un valor true o false.               | true           |
 * | Integer*     | Int       | Todo número sin punto decimal.                  | 23             |
 * | Float        | Float     | Números con puntos decimales.                   | 23.5           |
 * | Double       | Double    | Números con puntos decimales de alta precisión. | 23.5           |
 * | Character    | Character | Representa un único carácter de un texto.       | K              |
 * | String       | String    | Representación de cualquier texto.              | "Hola Carlota" |
 * |---------------------------------------------------------------------------------------------|
 *
 * Para en caso de los enteros tenemos diferentes casos.
 * El caso default, Int, puede ser un Int32 o Int63 dependiendo de la arquitectura del dispositivo.
 *
 * |------------------------------------------------------------------|
 * | Tipo   | Mínimo                     | Máximo                     |
 * |--------|----------------------------|----------------------------|
 * | Int8   | -128                       | 127                        |
 * | Int16  | -32,768                    | 32,767                     |
 * | Int32  | -2,147,483,648             | 2,147,483,647              |
 * | Int64  | -9,223,372,036,854,775,808 | 9,223,372,036,854,775,807  |
 * | Int*   | -2,147,483,648             | 2,147,483,647              |
 * |        | -9,223,372,036,854,775,808 | 9,223,372,036,854,775,807  |
 * |------------------------------------------------------------------|
 * | UInt8  | 0                          | 255                        |
 * | UInt16 | 0                          | 65,535                     |
 * | UInt32 | 0                          | 4,294,967,295              |
 * | UInt64 | 0                          | 18,446,744,073,709,551,615 |
 * | UInt   | 0                          | 18,446,744,073,709,551,615 |
 * |------------------------------------------------------------------|
 */

import Foundation

var unBooleano: Bool = true
var unInteger: Int = 9_223_372_036_854_775_807
var unFloat: Float = 23.123456
var unDouble: Double = 23.12345678901234
var unChar: Character = "M"
var unString: String = "Caracoles señor Stone."

// Enteros

var unInt8Minimo: Int8 = -128
var unInt8Maximo: Int8 = 127

var unInt16Minimo: Int16 = -32_768
var unInt16Maximo: Int16 = 32_767

var unInt32Minimo: Int32 = -2_147_483_648
var unInt32Maximo: Int32 = 2_147_483_647

var unInt64Minimo: Int64 = -9_223_372_036_854_775_808
var unInt64Maximo: Int64 = 9_223_372_036_854_775_807


var unUInt8Minimo: UInt8 = 0
var unUInt8Maximo: UInt8 = 255

var unUInt16Minimo: UInt16 = 0
var unUInt16Maximo: UInt16 = 65_535

var unUInt32Minimo: UInt32 = 0
var unUInt32Maximo: UInt32 = 4_294_967_295

var unUInt64Minimo: UInt64 = 0
var unUInt64Maximo: UInt64 = 18_446_744_073_709_551_615


