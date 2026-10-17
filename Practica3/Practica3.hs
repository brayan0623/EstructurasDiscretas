import Data.Bits ((.&.))
import FuncionesExtraModule (esParBit, divisores)
--Actividades para la practica 3.


{- Funcion: negativos
Descripcion: la funcion negativos cuenta la cantidad de numeros negativos que hay dentro de una lista.
Uso: negativos [-1, 2, 4, 6, -4] = 2
-}

negativos xs = length [ x | x <- xs, x < 0]


{- Funcion: soloPares
Descripcion: recibe una lista de tipo entero y devuelve una lista unicamente con los numeros que sean 
pares de la lista original.
Uso: soloPares [1, 2, 3, 4] = [2, 4]
-}

soloPares :: [Int] -> [Int]
soloPares xs = [x | x <- xs, esParBit x]


{- Funcion: primos
Descripcion: devuelve los primos de la lista dada
Uso: primos [1..20] = [2, 3, 5, 7, 11, 13, 17, 19]
-}

primos :: [Int] -> [Int]
primos xs = [x | x <- xs, length(divisores x) == 2]