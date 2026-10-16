# README perteneciente a la practica 3 de Estructuras Discretas
***
1. Actividad 1: 

![Actividad1](Actividad1.png)
¿Cual es la diferencia entre Num e Int?
La difrerencia entre Num e Int es que Num es una clase de tipo, mientras que Int es un tipo de dato concreto. En palabras mas claras y sencillas, Num especifica una serie de operaciones metematicas/funciones que ciertos tipos de datos pueden realizar, pero al estos tipos de datos ser capaces de cumplir con los criterios que establece la clase de tipo Num, estos pasan a ser instancias de dicha clase de tipo. 
Por otra parte, Int es un tipo de dato que es capaz de representar numeros enteros sin decimales, con precision fija hasta 64 bits. Como tal, Int no tiene instancias como Num, por el contrario, Int puede ser una instancia de distintas clases de tipo, como: Enum, Num, Ord, Show, Eq, etc.
Toda esta informacion es claramente visible en la captura de pantalla adjunta. Se ejecutamos el comando ":info Num", podremos ver un listado de todas las intancias/tipos de datos que cumplen con las funciones que establece Num, una de ellas es justamante Int. Asimismo, al ejecutar el comando ":info Int", notaremos que se despliega un listado en el que se detalla que el tipo de dato Int es una instancia de distintas clases de tipo, entre ellas, la clase de tipo Num. 
Despues, al usar el comando ":t (7 :: Int)", el cual pregunta el tipo de la expresion siguiente a ':t', a la cual le asignamos el tipo Int, Haskell nos respondera 'Int', lo que quiere decir que un numero puede ser un tipo de dato Int si asi de lo asginamos, pero segun sea el caso, tambien puede ser un dato de tipo Float, Double. etc.
Finalmente, con el comando "t: (7)", que pregunta el tipo de dato de la expresion siguiente a 't:', Haskell nos responde que (7) puede ser cualquier tipo de dato siempre y cuando este sea una instancia de la clase de tipo Num, es decir, que (7) puede ser de tipo: Double, Float, Int, Integer, Word.

