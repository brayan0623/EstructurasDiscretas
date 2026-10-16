--Actividades para la practica 3.


{- Funcion: negativos
Descripcion: la funcion negativos cuenta la cantidad de numeros negativos que hay dentro de una lista.
Uso: negativos [-1, 2, 4, 6, -4] = 2
-}

negativos xs = length [ x | x <- xs, x < 0]
