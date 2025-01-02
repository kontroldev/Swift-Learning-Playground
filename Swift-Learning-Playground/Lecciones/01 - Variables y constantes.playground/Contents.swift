import Foundation


 /// **Introducción a Variables, Constantes y Tipos de Datos en Swift

/// ***Declaración de Constantes y Variables
 //let // se usa para declarar constantes, que no se pueden cambiar después de asignarlas.
 //var // se usa para declarar variables, que sí se pueden modificar después de asignarlas.

/// **Tipos de Datos en Swift

// Swift ofrece una variedad de tipos de datos que pueden ser utilizados para representar números, caracteres, cadenas, y otros valores. A continuación se presentan algunos de los tipos de datos disponibles:

// - Int: Un tipo de dato que representa números enteros, con una longitud de 64 bits.
// - Int8: Representa un número entero con una longitud de 8 bits. Rango: -128 a 127
// - Int16: Representa un número entero con una longitud de 16 bits. Rango: -32,768 a 32,767
// - Int32: Representa un número entero con una longitud de 32 bits.
// - Int64: Representa un número entero con una longitud de 64 bits.
// - Int128: Representa un número entero con una longitud de 128 bits.
// - UInt: Un tipo de dato que representa números enteros no signados, con una longitud de 64 bits.
// - UInt8: Representa un número entero no signado con una longitud de 8 bits.
// - Int16: Representa un número entero no signado con una longitud de 16 bits.
// - UInt32: Representa un número entero no signado con una longitud de 32 bits.
// - UInt64: Representa un número entero no signado con una longitud de 64 bits.
// - UInt128: Representa un número entero no signado con una longitud de 128 bits.
// - Float: Un tipo de dato que representa números de punto flotante de precisión simple, con una longitud de 32 bits.
// - Double: Un tipo de dato que representa números de punto flotante de precisión doble, con una longitud de 64 bits.
// - Float16: Un tipo de dato que representa números de punto flotante de 16 bits.
// - Float80: Un tipo de dato que representa números de punto flotante de 80 bits (disponible solo en Linux).
// - Decimal: Tipo de dato numérico de hasta 38 posiciones decimales.
// - Bool: Un tipo de dato que representa un valor booleano, `true` o `false`.
// - Character: Un tipo de dato que representa un carácter.
// - String: Un tipo de dato que representa una cadena de caracteres.
// - Data: Un tipo de dato que representa datos en bruto.
// - Date: Un tipo de dato que representa una fecha.
//- URL: Un tipo de dato que representa una URL.
// - UUID: Identificador Único Universal, genera un ID único que por su forma de ser creado (basado en el reloj del sistema) nunca podrá repetirse.


/// **Definición de variables y constantes**
// - Después de especificar la mutabilidad con `let` o `var`, se pone el tipo de dato después de los dos puntos `:`, indicando qué tipo de valor puede almacenar (por ejemplo, `Int`, `String`, `Float`, etc.).


let testConstante: Int
var testVariable: Int16
let letra: Character = "A"

// No podemos sumarle estos dos valores aunque sean los dos de valor numeros,ya que el valor 'Int16' es otro tipo de datos al de 64 'Int'.  Tipado extrito.↙️
//testVariable + testConstante

testVariable = 0
testConstante = 1

// 'Int16' es constructores del tipo
testVariable = Int16(testConstante)


///*** Error de desbordamientos de datos.
// Esto no me daria en compilacion unerror, pero si en la ejecucion, por que cuando sume los dos valores serian 257 y ese valor no cabria por precision en 'UInt8' ya que solo caben 256.↙️

/*let v1: UInt8 = 255
let v2: UInt8 = 2

v1 + v2

- Podemos controlarlo, o darle una posible solucion.
v1.addingReportingOverflow(v2).overflow // aqui nos daria 'true' por que nos estaria diciendo que va a ver un desbordamiento de memoria*/

// Si a acualquier conostante o variable si le pone un '.'(punto), podemos acceder a sus metodos o propiedades.
//testConstante.
 

let numeroDecimal = 123.456 // Swift, infiere el dato que hay a la izquierda.

// Y podemos asignarlo de forma explicita. ⬇️
//let numeroDecimal: Float = 123.456

 // Float16 - Es un 'struct
// Float 64 - es un 'typealias'

///*** Typealias: es una palabra clave que te permite crear un alias o nombre alternativo para un tipo de dato existente.
