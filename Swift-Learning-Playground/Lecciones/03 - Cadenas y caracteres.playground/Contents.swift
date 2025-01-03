import Foundation

// Traducción de la documentación oficial:
// ***************************************

// Cadenas y caracteres:
// --------------------
/*
 Una cadena es una serie de caracteres, como "hola, mundo" o "albatros". Las cadenas rápidas están representadas por el tipo de cadena. Se puede acceder al contenido de una cadena de varias maneras, incluso como una colección de valores de caracteres.

 Los tipos de cadenas y caracteres de Swift proporcionan una forma rápida y compatible con Unicode de trabajar con texto en su código. La sintaxis para la creación y manipulación de cadenas es ligera y legible, con una sintaxis literal de cadena que es similar a C. La concatenación de cadenas es tan simple como combinar dos cadenas con el operador +, y la mutabilidad de cadenas se gestiona eligiendo entre una constante o una variable, al igual que cualquier otro valor en Swift. También puede usar cadenas para insertar constantes, variables, literales y expresiones en cadenas más largas, en un proceso conocido como interpolación de cadenas. Esto facilita la creación de valores de cadena personalizados para la visualización, el almacenamiento y la impresión.

 A pesar de esta simplicidad de sintaxis, el tipo de cadena de Swift es una implementación de cadena rápida y moderna. Cada cadena está compuesta por caracteres Unicode independientes de la codificación, y proporciona soporte para acceder a esos caracteres en varias representaciones Unicode.
 */


//*********************************************************************//
// Ntotas:                                                             //
//*********************************************************************//
// El tipo String de Swift se une con la clase NSString de Foundation. //
// Foundation también extiende String para exponer los métodos         //
// definidos por NSString. Esto significa que, si importa Foundation,  //
// puede acceder a esos métodos NSString en String sin casting.        //
// For more information about using String with Foundation and Cocoa,  //
//  see https://developer.apple.com/documentation/swift/string#2919514 //
//*********************************************************************//


// Literales de cadena:
// -------------------

// Puede incluir valores de cadena predefinidos dentro de su código como
// literales de cadena. Una cadena literal es una secuencia de caracteres
// rodeadas de comillas dobles (").

// Use a string literal as an initial value for a constant or variable:

let someString = "Some string literal value"

// Tenga en cuenta que Swift infiere un tipo de cadena para la constante
// someString porque se inicializa con un valor literal de cadena.


// Multiline String Literals:
// --------------------------

// Si necesita una cadena que abarque varias líneas,
// use una cadena literal de varias líneas, una secuencia de caracteres
// rodeada de tres comillas dobles:

let quotation = """
The White Rabbit put on his spectacles.  "Where shall I begin,
please your Majesty?" he asked.

"Begin at the beginning," the King said gravely, "and go on
till you come to the end; then stop."
"""

/*
 Un literal de cadena multilínea incluye todas las líneas entre sus comillas de apertura y cierre. La cadena comienza en la primera línea después de las comillas de apertura (""") y termina en la línea antes de las comillas de cierre, lo que significa que ninguna de las cadenas de abajo comienza o termina con un salto de línea:
 */

let singleLineString = "These are the same."
let multilineString = """
These are the same.
"""

/*
 Cuando su código fuente incluye un salto de línea dentro de un literal de cadena de varias líneas, ese salto de línea también aparece en el valor de la cadena. Si desea usar saltos de línea para que su código fuente sea más fácil de leer, pero no desea que los saltos de línea sean parte del valor de la cadena, escriba una barra invertida (\) al final de esas líneas:
 */

let softWrappedQuotation = """
The White Rabbit put on his spectacles.  "Where shall I begin, \
please your Majesty?" he asked.

"Begin at the beginning," the King said gravely, "and go on \
till you come to the end; then stop."
"""

/*
 Para hacer una cadena literal de varias líneas que comience o termine con un feed de línea, escriba una línea en blanco como primera o última línea. Por ejemplo:
 */

let lineBreaks = """

This string starts with a line break.
It also ends with a line break.

"""

/*
 Una cadena de varias líneas se puede indentar para que coincida con el código circundante. El espacio en blanco antes de las comillas de cierre (""") le dice a Swift qué espacio en blanco ignorar antes de todas las demás líneas. Sin embargo, si escribe un espacio en blanco al principio de una línea además de lo que está antes de las comillas de cierre, ese espacio en blanco se incluye.
 */

let linesWithIndentation = """
                     _______
                    |0|0|0|0| Esta línea no comienza con espacios en blanco.
                     -------
                        |
Espacio ignorado --------
                     _______   _______
                    |0|0|0|0| |O|O|O|O| Esta línea comienza con cuatro espacios.
                     -------   -------
                                  |
Aparece en cadena ----------------- 
                     _______
                    |0|0|0|0|  Esta línea no comienza con espacios en blanco.
                     -------
                     -------
                    |0|0|0|0| 
                     -------   """
                
/*
 En el ejemplo anterior, a pesar de que toda la cadena literal de varias líneas está indentada, la primera y la última línea de la cadena no comienzan con ningún espacio en blanco. La línea central tiene más sangría que las comillas de cierre, por lo que comienza con esa sangría adicional de cuatro espacios.
 */


// Caracteres especiales en literales de cadena:
// --------------------------------------------

/*
 Los literales de cadena pueden incluir los siguientes caracteres especiales:

 Los caracteres especiales de escape \0 (caracter nulo), \\ (barra invertida), \t (pestaña horizontal), \n (alimentación de línea), \r (retorno de carro), \" (comillas dobles) y \' (comillas simples)

 Un valor escalar Unicode arbitrario, escrito como \u{n}, donde n es un número hexadecimal de 1 a 8 dígitos (Unicode se discute en Unicode a continuación)

 El siguiente código muestra cuatro ejemplos de estos caracteres especiales. La constante wiseWords contiene dos comillas dobles escapadas. Las constantes dollarSign, blackHeart y sparklingHeart demuestran el formato escalar Unicode:
 */

let wiseWords = "\"Imagination is more important than knowledge\" - Einstein"
// "Imagination is more important than knowledge" - Einstein
let dollarSign = "\u{24}"        // $,  Unicode scalar U+0024
let blackHeart = "\u{2665}"      // ♥,  Unicode scalar U+2665
let sparklingHeart = "\u{1F496}" // 💖, Unicode scalar U+1F496

/*
 Debido a que los literales de cadena de varias líneas usan tres comillas dobles en lugar de solo una, puede incluir una comilla doble (") dentro de un literal de cadena de varias líneas sin escapar de ella. Para incluir el texto """ en una cadena de varias líneas, escape al menos una de las comillas. Por ejemplo:
 */

let threeDoubleQuotationMarks = """
Escaping the first quotation mark \"""
Escaping all three quotation marks \"\"\"
"""


// Delimitadores de cadenas extendidas:
// -----------------------------------


/*
 Para crear un valor de cadena vacío como punto de partida para construir una cadena más larga, asigne un literal de cadena vacía a una variable o inicialice una nueva instancia de cadena con la sintaxis del inicializador:
 */

var emptyString = ""               // empty string literal
var anotherEmptyString = String()  // initializer syntax
// these two strings are both empty, and are equivalent to each other

// Averigüe si un valor de cadena está vacío comprobando su propiedad Boolean isEmpty:

if emptyString.isEmpty {
    print("Nothing to see here")
}
// Prints "Nothing to see here"


// Mutabilidad de la cadena:
// ------------------------

/*
 Usted indica si una cadena en particular se puede modificar (o mutar) asignándola a una variable (en cuyo caso se puede modificar) o a una constante (en cuyo caso no se puede modificar):
 */

var variableString = "Horse"
variableString += " and carriage"
// variableString is now "Horse and carriage"


let constantString = "Highlander"
constantString += " and another Highlander"
// this reports a compile-time error - a constant string cannot be modified


//*********************************************************************//
// Ntotas:                                                             //
//*********************************************************************//
// Este enfoque es diferente de la mutación de cadena en Objective-C y //
// Cocoa, donde eliges entre dos clases (NSString y NSMutableString)   //
// para indicar si una cadena puede ser mutada.                        //
//*********************************************************************//

// Las Cadenas Son Tipos De Valores:
// --------------------------------

/*
 El tipo de cadena de Swift es un tipo de valor. Si crea un nuevo valor de cadena, ese valor de cadena se copia cuando se pasa a una función o método, o cuando se asigna a una constante o variable. En cada caso, se crea una nueva copia del valor de cadena existente, y se pasa o asigna la nueva copia, no la versión original. Los tipos de valor se describen en
 
 https://docs.swift.org/swift-book/documentation/the-swift-programming-language/classesandstructures#Structures-and-Enumerations-Are-Value-Types
 
 El comportamiento de cadena de copia predeterminada de Swift garantiza que cuando una función o método le pasa un valor de cadena, está claro que posee ese valor de cadena exacto, independientemente de dónde venga. Puede estar seguro de que la cadena que se le pasa no se modificará a menos que la modifique usted mismo.

 Detrás de escena, el compilador de Swift optimiza el uso de cadenas para que la copia real tenga lugar solo cuando es absolutamente necesario. Esto significa que siempre obtienes un gran rendimiento cuando trabajas con cadenas como tipos de valor.
 */

// Trabajar con personajes:
// -----------------------

/*
 Puede acceder a los valores de caracteres individuales para una cadena iterando sobre la cadena con un bucle for-in:
 */

for character in "Dog!🐶" {
    print(character)
}
// D
// o
// g
// !
// 🐶

/*
 El bucle for-in se describe en For-In Loops.

 Alternativamente, puede crear una constante o variable de carácter independiente a partir de una cadena literal de un solo carácter proporcionando una anotación de tipo de carácter:
 */

let exclamationMark: Character = "!"

/*
 Los valores de cadena se pueden construir pasando una matriz de valores de caracteres como argumento a su inicializador:
 */

let catCharacters: [Character] = ["C", "a", "t", "!", "🐱"]
let catString = String(catCharacters)
print(catString)
// Prints "Cat!🐱"


// Concatenación de cadenas y caracteres:
// -------------------------------------

/*
 Los valores de cadena se pueden sumar (o concatenar) con el operador de adición (+) para crear un nuevo valor de cadena:
 */

let string1 = "hello"
let string2 = " there"
var welcome = string1 + string2
// welcome now equals "hello there"

/*
 También puede agregar un valor de cadena a una variable de cadena existente con el operador de asignación de adición (+=):
 */

var instruction = "look over"
instruction += string2
// instruction now equals "look over there"


/*
 Puede apuntar un valor de carácter a una variable de cadena con el método append() del tipo de cadena:
 */


let exclamationMark: Character = "!"
welcome.append(exclamationMark)
// welcome now equals "hello there!"

//*********************************************************************//
// Ntotas:                                                             //
//*********************************************************************//
//                                                                     //
// No puede apundar una cadena o un carácter a una variable de         //
// carácter existente, porque un valor de carácter debe contener solo  //
// un carácter.                                                        //
//*********************************************************************//

/*
 Si está utilizando literales de cadena de varias líneas para construir las líneas de una cadena más larga, desea que cada línea de la cadena termine con un salto de línea, incluida la última línea. Por ejemplo:
 */


let badStart = """
    one
    two
    """
let end = """
    three
    """
print(badStart + end)
// Prints two lines:
// one
// twothree


let goodStart = """
    one
    two

    """
print(goodStart + end)
// Prints three lines:
// one
// two
// three


/*
 En el código anterior, concatenar badStart con end produce una cadena de dos líneas, que no es el resultado deseado. Debido a que la última línea de badStart no termina con un salto de línea, esa línea se combina con la primera línea de final. Por el contrario, ambas líneas de goodStart terminan con un salto de línea, por lo que cuando se combina con end, el resultado tiene tres líneas, como se esperaba.

 Interpolación de cadenas:
 ------------------------
 
 La interpolación de cadenas es una forma de construir un nuevo valor de cadena a partir de una mezcla de constantes, variables, literales y expresiones incluyendo sus valores dentro de un literal de cadena. Puede usar la interpolación de cadenas en literales de cadena de una sola línea y de varias líneas. Cada elemento que insertas en el literal de la cadena está envuelto en un par de paréntesis, precedido por una barra invertida (\):
 */

let multiplier = 3
let message = "\(multiplier) times 2.5 is \(Double(multiplier) * 2.5)"
// message is "3 times 2.5 is 7.5"


/*
 En el ejemplo anterior, el valor del multiplicador se inserta en un literal de cadena como \(multiplicador). Este marcador de posición se reemplaza con el valor real del multiplicador cuando se evalúa la interpolación de cadenas para crear una cadena real.

 El valor del multiplicador también es parte de una expresión más grande más adelante en la cadena. Esta expresión calcula el valor de Double(multiplicador) * 2.5 e inserta el resultado (7.5) en la cadena. En este caso, la expresión se escribe como \(Double(multiplier) * 2.5) cuando se incluye dentro del literal de la cadena.

 Puede usar delimitadores de cadenas extendidos para crear cadenas que contengan caracteres que de otro modo se tratarían como una interpolación de cadenas. Por ejemplo:
 */

print(#"Write an interpolated string in Swift using \(multiplier)."#)
// Prints "Write an interpolated string in Swift using \(multiplier)."

/*
 Para usar la interpolación de cadenas dentro de una cadena que usa delimitadores extendidos, haga coincidir el número de signos numéricos después de la barra invertida con el número de signos numéricos al principio y al final de la cadena. Por ejemplo:
 */

print(#"6 times 7 is \#(6 * 7)."#)
// Prints "6 times 7 is 42."


//*********************************************************************//
// Ntotas:                                                             //
//*********************************************************************//
//                                                                     //
// Las expresiones que escribes entre paréntesis dentro de una cadena  //
// interpolada no pueden contener una barra invertida sin escape (\),  //
// un retorno de carro o un feed de línea. Sin embargo, pueden         //
// contener otros literales de cadena.                                 //
//*********************************************************************//

/*
 Unicode:
 -------
 
 Unicode es un estándar internacional para codificar, representar y procesar texto en diferentes sistemas de escritura. Le permite representar casi cualquier carácter de cualquier idioma en una forma estandarizada, y leer y escribir esos caracteres hacia y desde una fuente externa, como un archivo de texto o una página web. Los tipos de cadenas y caracteres de Swift son totalmente compatibles con Unicode, como se describe en esta sección.

 Valores escalares Unicode:
 -------------------------
 
 Detrás de escena, el tipo de cadena nativo de Swift se construye a partir de valores escalares Unicode. Un valor escalar Unicode es un número único de 21 bits para un carácter o modificador, como U+0061 para LA LETRA MINÚSCULA LATINA A ("a"), o U+1F425 para FRONT-FACING BABY CHICK ("🐥").

 Tenga en cuenta que no todos los valores escalares Unicode de 21 bits están asignados a un carácter; algunos escalares están reservados para asignación futura o para su uso en la codificación UTF-16. Los valores escalares que se han asignado a un carácter generalmente también tienen un nombre, como la LETRA MINÚSCULA LATINA A y el POLLITO FRONTAL en los ejemplos anteriores.

 Grupos de grafema extendidos:
 ----------------------------
 
 Cada instancia del tipo de carácter de Swift representa un único grupo de grafemas extendido. Un grupo de grafemas extendido es una secuencia de uno o más escalares Unicode que (cuando se combinan) producen un solo carácter legible por humanos.

 He aquí un ejemplo. La letra é se puede representar como el único escalar Unicode é (LETRA MINÚSCULA LATINA E CON AGUDO, o U+00E9). Sin embargo, la misma letra también se puede representar como un par de escalares: una letra estándar e (LETRA MINÚSCULA LATINA E, o U+0065), seguida del escalar COMBINADO DE ACENTO AGUDO (U+0301). El escalar COMBINING ACUTE ACCENT se aplica gráficamente al escalar que lo precede, convirtiendo una e en una é cuando se representa mediante un sistema de representación de texto con tecnología Unicode.

 En ambos casos, la letra é se representa como un solo valor de carácter Swift que representa un grupo de grafemas extendido. En el primer caso, el clúster contiene un solo escalar; en el segundo caso, es un grupo de dos escalares:
 */

let eAcute: Character = "\u{E9}"                         // é
let combinedEAcute: Character = "\u{65}\u{301}"          // e followed by
// eAcute is é, combinedEAcute is é

/*
 Los clústeres de grafemas extendidos son una forma flexible de representar muchos caracteres de escritura complejos como un solo valor de carácter. Por ejemplo, las sílabas Hangul del alfabeto coreano se pueden representar como una secuencia precompuesta o descompuesta. Ambas representaciones califican como un solo valor de carácter en Swift:
*/

let precomposed: Character = "\u{D55C}"                  // 한
let decomposed: Character = "\u{1112}\u{1161}\u{11AB}"   // ᄒ, ᅡ, ᆫ
// precomposed is 한, decomposed is 한

/*
 Los clústeres de grafemas extendidos permiten escalares para encerrar marcas (como COMBINAR CÍRCULO DE CIERRE o U+20DD) para encerrar otros escalares Unicode como parte de un solo valor de carácter:
 */

let enclosedEAcute: Character = "\u{E9}\u{20DD}"
// enclosedEAcute is é⃝

/*
 Los escalares Unicode para los símbolos indicadores regionales se pueden combinar en pares para crear un solo valor de carácter, como esta combinación de LETRA DEL SÍMBOLO DEL INDICADOR REGIONAL U (U+1F1FA) y LA LETRA DEL SÍMBOLO DEL INDICADOR REGIONAL S (U+1F1F8):
 */


let regionalIndicatorForUS: Character = "\u{1F1FA}\u{1F1F8}"
// regionalIndicatorForUS is 🇺🇸

/*
 Conteo de personajes:
 --------------------
 
 Para recuperar un recuento de los valores de caracteres en una cadena, use la propiedad de recuento de la cadena:
 */

let unusualMenagerie = "Koala 🐨, Snail 🐌, Penguin 🐧, Dromedary 🐪"
print("unusualMenagerie has \(unusualMenagerie.count) characters")
// Prints "unusualMenagerie has 40 characters"

/*
 Tenga en cuenta que el uso de Swift de clústeres de grafemas extendidos para los valores de caracteres significa que la concatenación y modificación de cadenas no siempre pueden afectar el recuento de caracteres de una cadena.

 Por ejemplo, si inicializa una nueva cadena con el café de palabras de cuatro caracteres, y luego agrega un ACENTO AGUDO COMBINADO (U+0301) al final de la cadena, la cadena resultante todavía tendrá un recuento de caracteres de 4, con un cuarto carácter de é, no e:
 */


var word = "cafe"
print("the number of characters in \(word) is \(word.count)")
// Prints "the number of characters in cafe is 4"


word += "\u{301}"    // COMBINING ACUTE ACCENT, U+0301


print("the number of characters in \(word) is \(word.count)")
// Prints "the number of characters in café is 4"


//*********************************************************************//
// Ntotas:                                                             //
//*********************************************************************//
// Los grupos de grafemas extendidos pueden estar compuestos por       //
// múltiples escalares Unicode. Esto significa que diferentes          //
// caracteres, y diferentes representaciones del mismo carácter,       //
// pueden requerir diferentes cantidades de memoria para almacenar.    //
// Debido a esto, los caracteres en Swift no ocupan la misma cantidad  //
// de memoria dentro de la representación de una cadena.               //
// Como resultado, el número de caracteres en una cadena no se puede   //
// calcular sin iterar a través de la cadena para determinar sus       //
// límites de grupo de grafemas extendidos. Si está trabajando con     //
// valores de cadena particularmente largos, tenga en cuenta que la    //
// propiedad de recuento debe iterar sobre los escalares Unicode en    //
// toda la cadena para determinar los caracteres de esa cadena.        //
//                                                                     //
// El recuento de caracteres devueltos por la propiedad count no       //
// siempre es el mismo que la propiedad length de un NSString que      //
// contiene los mismos caracteres. La longitud de una NSString se basa //
// en el número de unidades de código de 16 bits dentro de la          //
// representación UTF-16 de la cadena y no en el número de clústeres   //
// de grafemas extendidos Unicode dentro de la cadena.                 //
//*********************************************************************//

/*
 Acceso y modificación de una cadena:
 -----------------------------------
 
 Se accede y se modifica una cadena a través de sus métodos y propiedades, o mediante el uso de la sintaxis de subíndices.

 
 Índices de cadena:
 -----------------
 
 Cada valor de cadena tiene un tipo de índice asociado, String.Index, que corresponde a la posición de cada carácter en la cadena.

 Como se mencionó anteriormente, los diferentes caracteres pueden requerir diferentes cantidades de memoria para almacenar, por lo que para determinar qué carácter está en una posición particular, debe iterar sobre cada escalar Unicode desde el principio o el final de esa cadena. Por esta razón, las cadenas Swift no se pueden indexar por valores enteros.

 Utilice la propiedad startIndex para acceder a la posición del primer carácter de una cadena. La propiedad endIndex es la posición después del último carácter en una cadena. Como resultado, la propiedad endIndex no es un argumento válido para el subíndice de una cadena. Si una cadena está vacía, startIndex y endIndex son iguales.

 Accedes a los índices antes y después de un índice dado utilizando los métodos index(before:) e index(after:) de String. Para acceder a un índice más alejado del índice dado, puede usar el método index(_:offsetBy:) en lugar de llamar a uno de estos métodos varias veces.

 Puede usar la sintaxis de subíndices para acceder al carácter en un índice de cadena en particular.
 */

let greeting = "Guten Tag!"
greeting[greeting.startIndex]
// G
greeting[greeting.index(before: greeting.endIndex)]
// !
greeting[greeting.index(after: greeting.startIndex)]
// u
let index = greeting.index(greeting.startIndex, offsetBy: 7)
greeting[index]
// a

/*
 Intentar acceder a un índice fuera del rango de una cadena o a un carácter en un índice fuera del rango de una cadena desencadenará un error de tiempo de ejecución.
 */

greeting[greeting.endIndex] // Error
greeting.index(after: greeting.endIndex) // Error

// Utilice la propiedad de índices para acceder a todos los índices de caracteres individuales en una cadena.

for index in greeting.indices {
    print("\(greeting[index]) ", terminator: "")
}
// Prints "G u t e n   T a g ! "


//*********************************************************************//
// Ntotas:                                                             //
//*********************************************************************//
// Puede usar las propiedades startIndex y endIndex y los métodos      //
// index(before:), index(after:) e index(_:offsetBy:) en cualquier     //
// tipo que se ajuste al protocolo Collection. Esto incluye String,    //
// como se muestra aquí, así como tipos de colección como Array,       //
// Dictionary y Set.                                                   //
//*********************************************************************//

/*
 Inserción y Extracción

 Para insertar un solo carácter en una cadena en un índice especificado, use el método insert(_:at:), y para insertar el contenido de otra cadena en un índice especificado, use el método insert(contentsOf:at:).
 */

var welcome = "hello"
welcome.insert("!", at: welcome.endIndex)
// welcome now equals "hello!"


welcome.insert(contentsOf: " there", at: welcome.index(before: welcome.endIndex))
// welcome now equals "hello there!"

/*
 Para eliminar un solo carácter de una cadena en un índice especificado, use el método remove(at:), y para eliminar una subcadena en un rango especificado, use el método removeSubrange(_:):
 */

welcome.remove(at: welcome.index(before: welcome.endIndex))
// welcome now equals "hello there"


let range = welcome.index(welcome.endIndex, offsetBy: -6)..<welcome.endIndex
welcome.removeSubrange(range)
// welcome now equals "hello"


//*********************************************************************//
// Ntotas:                                                             //
//*********************************************************************//
// Puede utilizar los métodos insert(_:at:), insert(contentsOf:at:),   //
// remove(at:) y removeSubrange(_:) en cualquier tipo que se ajuste al //
// protocolo RangeReplaceableCollection. Esto incluye String, como se  //
// muestra aquí, así como tipos de colección como Array,               //
// Dictionary y Set.                                                   //
// ********************************************************************//

/*
 Subcadenas:
 ----------

 Cuando obtienes una subcadena de una cadena, por ejemplo, usando un subíndice o un método como prefix(_:), el resultado es una instancia de Subcadena, no otra cadena. Las subcadenas en Swift tienen la mayoría de los mismos métodos que las cadenas, lo que significa que puede trabajar con subcadenas de la misma manera que trabaja con cadenas. Sin embargo, a diferencia de las cadenas, utiliza subcadenas solo durante un corto período de tiempo mientras realiza acciones en una cadena. Cuando esté listo para almacenar el resultado durante más tiempo, convierta la subcadena en una instancia de cadena. Por ejemplo:
 */

let greeting = "Hello, world!"
let index = greeting.firstIndex(of: ",") ?? greeting.endIndex
let beginning = greeting[..<index]
// beginning is "Hello"


// Convert the result to a String for long-term storage.
let newString = String(beginning)

/*
 Al igual que las cadenas, cada subcadena tiene una región de memoria donde se almacenan los caracteres que componen la subcadena. La diferencia entre cadenas y subcadenas es que, como optimización del rendimiento, una subcadena puede reutilizar parte de la memoria que se utiliza para almacenar la cadena original, o parte de la memoria que se utiliza para almacenar otra subcadena. (Las cadenas tienen una optimización similar, pero si dos cadenas comparten memoria, son iguales). Esta optimización del rendimiento significa que no tiene que pagar el costo de rendimiento de copiar memoria hasta que modifique la cadena o la subcadena. Como se mencionó anteriormente, las subcadenas no son adecuadas para el almacenamiento a largo plazo, debido a que reutilizan el almacenamiento de la cadena original, toda la cadena original debe mantenerse en la memoria mientras se esté utilizando cualquiera de sus subcadenas.

 En el ejemplo anterior, el saludo es una cadena, lo que significa que tiene una región de memoria donde se almacenan los caracteres que componen la cadena. Debido a que el comienzo es una subcadena de saludo, reutiliza la memoria que utiliza el saludo. Por el contrario, newString es una cadena; cuando se crea a partir de la subcadena, tiene su propio almacenamiento. La siguiente figura muestra estas relaciones:
 */

/*
              ______                    ___________________
             |String|----------------->|     Storage       |
              ------             ------|---> Hello, world! |
                                 |     |                   |
             -----------         |     |___________________|
            | Substring |________|
             -----------                ___________________
                  |                    |     Storage       |
                  |                    |                   |
                  |                    |      Hello        |
                  V                    |                   |
              --------                 |                   |
             | String |--------------->|___________________|
              --------
 
 |*********************************************************************|
 | Ntotas:                                                             |
 |*********************************************************************|
 | Tanto String como Substring se ajustan al protocolo StringProtocol, |
 | lo que significa que a menudo es conveniente para las funciones de  |
 | manipulación de cadenas aceptar un valor StringProtocol.            |
 | Puede llamar a tales funciones con un valor de cadena o subcadena.  |
 |*********************************************************************|
 
 
 Comparación de cadenas:
 ----------------------
 
 Swift proporciona tres formas de comparar valores textuales: igualdad de cadenas y caracteres, igualdad de prefijos e igualdad de sufijos.

 
 Igualdad de cadenas y caracteres:
 --------------------------------
 
 La igualdad de cadenas y caracteres se comprueba con el operador "igual a" (==) y el operador "no igual a" (! =), como se describe en Operadores de Comparación:
 
 */

let quotation = "We're a lot alike, you and I."
let sameQuotation = "We're a lot alike, you and I."
if quotation == sameQuotation {
    print("These two strings are considered equal")
}
// Prints "These two strings are considered equal"

/*
 Dos valores de cadena (o dos valores de caracteres) se consideran iguales si sus grupos de grafemas extendidos son canónicamente equivalentes. Los grupos de grafemas extendidos son canónicamente equivalentes si tienen el mismo significado y apariencia lingüística, incluso si están compuestos de diferentes escalares Unicode detrás de escena.

 Por ejemplo, LA LETRA MINÚSCULA LATINA E CON AGUDA (U+00E9) es canónicamente equivalente a LA LETRA MINÚSCULA LATINA E (U+0065) seguida de COMBINACIÓN DE ACENTO AGUDO (U+0301). Ambos grupos de grafemas extendidos son formas válidas de representar el carácter é, por lo que se consideran canónicamente equivalentes:
 */


// "Voulez-vous un café?" using LATIN SMALL LETTER E WITH ACUTE
let eAcuteQuestion = "Voulez-vous un caf\u{E9}?"


// "Voulez-vous un café?" using LATIN SMALL LETTER E and COMBINING ACUTE ACCENT
let combinedEAcuteQuestion = "Voulez-vous un caf\u{65}\u{301}?"


if eAcuteQuestion == combinedEAcuteQuestion {
    print("These two strings are considered equal")
}
// Prints "These two strings are considered equal"

/*
 Por el contrario, la LETRA MAYÚSCULA LATINA A (U+0041, o "A"), como se usa en inglés, no es equivalente a la LETRA MAYÚSCULA CIRÍLICA A (U+0410, o "А"), como se usa en ruso. Los caracteres son visualmente similares, pero no tienen el mismo significado lingüístico:
 */

let latinCapitalLetterA: Character = "\u{41}"


let cyrillicCapitalLetterA: Character = "\u{0410}"


if latinCapitalLetterA != cyrillicCapitalLetterA {
    print("These two characters aren't equivalent.")
}
// Prints "These two characters aren't equivalent."


/*
 |*********************************************************************|
 | Ntotas:                                                             |
 |*********************************************************************|
 |Las comparaciones de cadenas y caracteres en Swift no son sensibles a|
 | la configuración regional.                                          |
 |*********************************************************************|
 
 
 Igualdad de prefijo y sufijo:
 ----------------------------
 
 Para comprobar si una cadena tiene un prefijo o sufijo de cadena particular, llame a los métodos hasPrefix(_:) y hasSuffix(_:) de la cadena, los cuales toman un solo argumento de tipo String y devuelven un valor booleano.

 Los siguientes ejemplos consideran una serie de cuerdas que representan las ubicaciones de la escena de los dos primeros actos de Romeo y Julieta de Shakespeare:
 */

let romeoAndJuliet = [
    "Act 1 Scene 1: Verona, A public place",
    "Act 1 Scene 2: Capulet's mansion",
    "Act 1 Scene 3: A room in Capulet's mansion",
    "Act 1 Scene 4: A street outside Capulet's mansion",
    "Act 1 Scene 5: The Great Hall in Capulet's mansion",
    "Act 2 Scene 1: Outside Capulet's mansion",
    "Act 2 Scene 2: Capulet's orchard",
    "Act 2 Scene 3: Outside Friar Lawrence's cell",
    "Act 2 Scene 4: A street in Verona",
    "Act 2 Scene 5: Capulet's mansion",
    "Act 2 Scene 6: Friar Lawrence's cell"
]

/*
 Puedes usar el método hasPrefix(_:) con la matriz romeoAndJuliet para contar el número de escenas en el Acto 1 de la obra:
 */

var act1SceneCount = 0
for scene in romeoAndJuliet {
    if scene.hasPrefix("Act 1 ") {
        act1SceneCount += 1
    }
}
print("There are \(act1SceneCount) scenes in Act 1")
// Prints "There are 5 scenes in Act 1"


/*
 Del mismo modo, use el método hasSuffix(_:) para contar el número de escenas que tienen lugar en o alrededor de la mansión de Capuleto y la celda de Fray Lawrence:
 */

var mansionCount = 0
var cellCount = 0
for scene in romeoAndJuliet {
    if scene.hasSuffix("Capulet's mansion") {
        mansionCount += 1
    } else if scene.hasSuffix("Friar Lawrence's cell") {
        cellCount += 1
    }
}
print("\(mansionCount) mansion scenes; \(cellCount) cell scenes")
// Prints "6 mansion scenes; 2 cell scenes"


/*
 |*********************************************************************|
 | Ntotas:                                                             |
 |*********************************************************************|
 | Los métodos hasPrefix(_:) y hasSuffix(_:) realizan una comparación  |
 | de equivalencia canónica carácter por carácter entre los grupos de  |
 | grafemas extendidos en cada cadena, como se describe en String and  |
 | Character Equality.                                                 |
 |*********************************************************************|
 
 
 Representaciones Unicode de cadenas:
 -----------------------------------
 
 Cuando se escribe una cadena Unicode en un archivo de texto o en algún otro almacenamiento, los escalares Unicode en esa cadena se codifican en una de varias formas de codificación definidas por Unicode. Cada forma codifica la cadena en pequeños trozos conocidos como unidades de código. Estos incluyen la forma de codificación UTF-8 (que codifica una cadena como unidades de código de 8 bits), la forma de codificación UTF-16 (que codifica una cadena como unidades de código de 16 bits) y la forma de codificación UTF-32 (que codifica una cadena como unidades de código de 32 bits).

 Swift proporciona varias formas diferentes de acceder a representaciones Unicode de cadenas. Puede iterar sobre la cadena con una declaración for-in, para acceder a sus valores de caracteres individuales como grupos de grafemas extendidos Unicode. Este proceso se describe en Trabajar con personajes.

 Alternativamente, acceda a un valor de cadena en una de las otras tres representaciones compatibles con Unicode:

 Una colección de unidades de código UTF-8 (accesida con la propiedad utf8 de la cadena)

 Una colección de unidades de código UTF-16 (accesida con la propiedad utf16 de la cadena)

 Una colección de valores escalares Unicode de 21 bits, equivalentes a la forma de codificación UTF-32 de la cadena (accesida con la propiedad unicodeScalars de la cadena)

 Cada ejemplo a continuación muestra una representación diferente de la siguiente cadena, que se compone de los caracteres D, o, g, !! (MARCA DE EXCLAMACIÓN DOBLE, o escalar Unicode U+203C), y el carácter 🐶 (CARA DE PERRO, o escalar Unicode U+1F436):
 */

let dogString = "Dog‼🐶"

/*
 Representación UTF-8

 Puede acceder a una representación UTF-8 de una cadena iterando sobre su propiedad utf8. Esta propiedad es de tipo String.UTF8View, que es una colección de valores de 8 bits (UInt8) sin signo, uno para cada byte en la representación UTF-8 de la cadena:
 
 |***************************************************************************************************|
 |          |    D   |    o   |    g   |             !!              |               🐶              |
 | charxter | U+0044 | U+006F | U+0067 |           U+203c            |            U+1F436            |
 |          |        |        |        |                             |                               |
 |*******************************************************************|*******************************|
 |          |        |        |        |        |          |         |       |       |       |       |
 | UTF-8    |   68   |   111  |  103   |   226  |   128    |  188    |  240  |  159  |  144  |  182  |
 |          |        |        |        |        |          |         |       |       |       |       |
 |**********|********|********|********|********|**********|*********|*******|*******|*******|*******|
 |          |        |        |        |        |          |         |       |       |       |       |
 | Position |   0    |    1   |   2    |   3    |    4     |    5    |   6   |   7   |   8   |   9   |
 |          |        |        |        |        |          |         |       |       |       |       |
 |***************************************************************************************************|
 
 */

for codeUnit in dogString.utf8 {
    print("\(codeUnit) ", terminator: "")
}
print("")
// Prints "68 111 103 226 128 188 240 159 144 182 "


/*
 En el ejemplo anterior, los tres primeros valores decimales de codeUnit (68, 111, 103) representan los caracteres D, o y g, cuya representación UTF-8 es la misma que su representación ASCII. Los siguientes tres valores decimales de la unidad de código (226, 128, 188) son una representación UTF-8 de tres bytes del carácter DOUBLE EXCLAMATION MARK. Los últimos cuatro valores de codeUnit (240, 159, 144, 182) son una representación UTF-8 de cuatro bytes del carácter DOG FACE.

 Representación UTF-16

 Puede acceder a una representación UTF-16 de una cadena iterando sobre su propiedad utf16. Esta propiedad es de tipo String.UTF16View, que es una colección de valores de 16 bits sin signo (UInt16), uno para cada unidad de código de 16 bits en la representación UTF-16 de la cadena:
 
 
 |*******************************************************************|
 |          |    D   |    o   |    g   |   !!   |         🐶         |
 | charxter | U+0044 | U+006F | U+0067 | U+203c |      U+1F436       |
 |          |        |        |        |        |                    |
 |*******************************************************************|
 |          |        |        |        |        |          |         |
 |  UTF-16  |   68   |   111  |  103   |  8252  |  55357   | 56374   |
 |code Unit |        |        |        |        |          |         |
 |**********|********|********|********|********|**********|*********|
 |          |        |        |        |        |          |         |
 | Position |   0    |    1   |   2    |   3    |    4     |    5    |
 |          |        |        |        |        |          |         |
 |*******************************************************************|
 
 */

for codeUnit in dogString.utf16 {
    print("\(codeUnit) ", terminator: "")
}
print("")
// Prints "68 111 103 8252 55357 56374 "


/*
 Una vez más, los tres primeros valores de codeUnit (68, 111, 103) representan los caracteres D, o y g, cuyas unidades de código UTF-16 tienen los mismos valores que en la representación UTF-8 de la cadena (porque estos escalares Unicode representan caracteres ASCII).

 El cuarto valor de codeUnit (8252) es un equivalente decimal del valor hexadecimal 203C, que representa el escalar Unicode U+203C para el carácter DOUBLE EXCLAMATION MARK. Este carácter se puede representar como una sola unidad de código en UTF-16.

 Los valores quinto y sexto codeUnit (55357 y 56374) son una representación de par sustituto UTF-16 del carácter DOG FACE. Estos valores son un valor sustituto alto de U+D83D (valor decimal 55357) y un valor sustituto bajo de U+DC36 (valor decimal 56374).

 
 Representación escalar Unicode:
 ------------------------------
 
 Puede acceder a una representación escalar Unicode de un valor de cadena iterando sobre su propiedad unicodeScalars. Esta propiedad es de tipo UnicodeScalarView, que es una colección de valores de tipo UnicodeScalar.

 Cada UnicodeScalar tiene una propiedad de valor que devuelve el valor de 21 bits del escalar, representado dentro de un valor UInt32:
 
 
 |*********************************************************|
 |          |    D   |    o   |    g   |   !!   |    🐶    |
 | charxter | U+0044 | U+006F | U+0067 | U+203c | U+1F436  |
 |          |        |        |        |        |          |
 |*********************************************************|
 | Unicode  |        |        |        |        |          |
 |  scale   |   68   |   111  |  103   |  8252  |  128054  |
 |code Unit |        |        |        |        |          |
 |**********|********|********|********|********|**********|
 |          |        |        |        |        |          |
 | Position |   0    |    1   |   2    |   3    |    4     |
 |          |        |        |        |        |          |
 |*********************************************************|
 */

for scalar in dogString.unicodeScalars {
    print("\(scalar.value) ", terminator: "")
}
print("")
// Prints "68 111 103 8252 128054 "

/*
 Las propiedades de valor para los tres primeros valores UnicodeScalar (68, 111, 103) representan una vez más los caracteres D, o y g.

 El cuarto valor de codeUnit (8252) es de nuevo un equivalente decimal del valor hexadecimal 203C, que representa el escalar Unicode U+203C para el carácter DOUBLE EXCLAMATION MARK.

 La propiedad de valor del quinto y último UnicodeScalar, 128054, es un equivalente decimal del valor hexadecimal 1F436, que representa el escalar Unicode U+1F436 para el carácter DOG FACE.

 Como alternativa a consultar sus propiedades de valor, cada valor de UnicodeScalar también se puede usar para construir un nuevo valor de cadena, como con la interpolación de cadenas:
 */


for scalar in dogString.unicodeScalars {
    print("\(scalar) ")
}
// D
// o
// g
// ‼
// 🐶


