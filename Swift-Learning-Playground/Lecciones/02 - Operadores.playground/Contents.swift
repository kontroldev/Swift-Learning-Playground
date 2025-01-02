import Foundation


/// **Operaciones Básicas en Swift: Variables, Operadores y Rangos

/*En este fragmento de código veremos cómo trabajar con:
- Tipos de datos básicos: enteros, decimales, cadenas de texto y valores booleanos.
- Operadores aritméticos, que nos permiten realizar cálculos matemáticos.
- Operadores acumulativos, para actualizar valores de manera más eficiente.
- Operadores lógicos, que nos permiten tomar decisiones comparando valores.
- Operadores de rango, útiles para definir un conjunto de valores.
- Precedencia de operadores, que es el orden en el que se resuelven las operaciones.

Recuerda que cada tipo de dato tiene propiedades únicas, y es fundamental entender cómo funcionan para poder utilizarlos correctamente.*/

var entero1 = 21
let entero2 = 10
let entero3 = Int.max // esto asignamos el maximo representable del tipo de dato, con un contructor del tipo.
let decimal = 10.5
let decimal2 = 10.0
let string = "Hola Mundo "
let string2 = "Swift"
let bool = true


/// **OPERADOR ARITMETICOS ⬇️

///  + Suma(tambien en cadena)
///  - Resta (y negacion)
///  * Multiplicacion
///  / Division
  
///  % Resto de division (solo en enteros)

entero1 + entero2 + entero1

/// **⬇️ ⚠️ REGLA: No se puede usar un operador aritmetico entre tipo diferentes, aunque estos sean numericos y hay que convertir uno de ellos.
// El de menor precision al de mayor precision, con el constructor del tipo. ↙️
Double(entero1) + decimal

string + string2


let suma = entero1 + entero2 //podemos sumar tipos enteros del mismo tipo y asignarlos.
// en suma estamos metiendo el resultado de 'entero1' y 'entero2' y estos, no se modifica.

decimal - decimal2
entero1 * entero2
entero2 / entero1
// Podemos restar, multiplicar y dividir enteros, que sean del mismo tipo.

// Calcula el resto decimal de dividir `decimal` entre `decimal2`.
// Es equivalente al operador `%` para enteros, pero diseñado para trabajar con números decimales.
decimal.truncatingRemainder(dividingBy: decimal2)



21.addingReportingOverflow(10).overflow
entero1.addingReportingOverflow(entero3).partialValue // esto nos daria el valor mas alto de sumar 'entero1' a 'entero3'.
entero1.addingReportingOverflow(entero3).overflow //este constructor nos devuelve un bool y nos dice que hay un desbordamiento.

// ⬆️ esto se suele poner cuando el usuario introduce un dato, por ejemplo el año.


/// **OPERADORES DE ACUMULACION ⬇️

///  += Suma acumulada
///  -= Resta acumulada
///  *= Multiplicacion acumulada
///  /= Division acumulada


entero1 += entero2
entero1 -= entero2
entero1 *= entero2
entero1 /= entero2


//Funcion para sumar tres numeros enteros, ejemplo del autocompletado.

func sumarTresEnteros(_ entero1: Int, _ entero2: Int, _ entero3: Int) -> Int {
    return entero1 + entero2 + entero3
}


/// ** OPERADORES COMPARATIVOS ⬇️

decimal == decimal2 // es igual
decimal != decimal2 // No igual

entero1 > entero2 // mayor que
entero1 < entero2 // menor que
entero1 >= entero2 // mayor o igual que
entero1 <= entero2 // menor o igual que

let x = entero1 > entero2 // podemos guardar las comparaciones, dentro de una constante o variable.


/// ** OPERARIO TERNARIO CONDICIONAL.

entero1 > entero2 ? "Si" : "No" // Aqui le estamos diciendo que lo que quiero para el true y para al false. Los dos valores deben de ser del mismo tipo, por que luego se pueden guardar en una variable o constante.
// Si    // No


/// ** OPERADOR DE RANGO ⬇️

let rango1 = 10...40 // Rango cerrado que va del 10 al 40, incluyendo el 40.
let rango2 = 10..<40 // Rango semi abiertos, que va del 10 hasta el 39, aqui NO se incluye en 40.
let rango3 = ...40 // Rango partcial, todos los valores hasta el 40, incluyendo el 40.
let rango4 = ..<40 // Rango parcial, hasta el 40, sin incluir el 40.
let rango5 = 40... //  "      "       , del 40 hasta el infinito.
let rango6 = ...40 //  "      "       , del -el valor del rango hasta el 40.



/// **EJERCICIOS**

/// **Ejercicio 1: Verificar múltiplos

//Escribe una función que reciba dos números enteros y determine si el primer número es múltiplo del segundo. La función debe devolver un mensaje indicando si es múltiplo o no.


/// **Ejercicio 2: Clasificar números en un rango

/*Crea una función que reciba un número entero y determine en qué categoría cae según el rango que le corresponde:
    • Si el número está entre 1 y 10 (incluidos), devuelve “Bajo”.
    • Si está entre 11 y 20 (incluidos), devuelve “Medio”.
    • Si es mayor a 20, devuelve “Alto”.
    • Si es menor que 1, devuelve “Inválido”. */


/// **Ejercicio 3: Validar año de nacimiento

/*Escribe una función que reciba un año de nacimiento como parámetro y devuelva:
    • “Eres mayor de edad” si la diferencia entre el año actual (2025) y el año de nacimiento es mayor o igual a 18.
    • “Eres menor de edad” en caso contrario.*/


/// ***Las soluciones las proporcionaremos la semana que viene, y si deseais hacer mas, podeis hacer los dos primeros retos #0 y #1 de retos de programacion de MoureDev.
 //                    https://retosdeprogramacion.com/roadmap/   */
