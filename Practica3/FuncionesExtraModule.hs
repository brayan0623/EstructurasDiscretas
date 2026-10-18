module FuncionesExtraModule (esParBit, divisores, mesesDias, tasaInteres) where

import Data.Bits ((.&.))

{- Funcion: esParBit
Descripcion: Verifica si un entero es par de acuerdo a sus operaciones entre bits
Uso: esParBit = True
-}

esParBit :: Int -> Bool
esParBit n = (n.&.1) == 0


{-Funcion: divisores
Descripcion: recibe un entero y devuelte una lista con sus divisores
Uso: divisores 9 = [1, 3, 9]

-}

divisores :: Int -> [Int] 
divisores x = [d | d <- [1..x], mod x d == 0]


{- Funcion: mesesDias
Descripcion: recibe un dato de tipo String que expresa una cantidad de meses y
devuelve la conversion de esos meses en dias
Uso: mesesDias ("Meses", 12) = 364
-}

mesesDias :: (String,Double) -> Double
mesesDias (x,y) =
    if x == "Meses" && y == 1
      then 28
      else (if x == "Meses" && y == 6
        then 182
        else (if x == "Meses" && y == 12
          then 364
          else (if x == "Dias" && y >= 28
          then y
          else 0)))


{- Funcion: tasaInteres
Descripcion: tasaInteres recibe un plazo de tiempo en dias o meses y devuelve la tasa de 
interes anal bruta segun sea el caso.
Uso: tasaInteres ("Meses", 1) = 0.0609
-}

tasaInteres :: (String, Double) -> Double
tasaInteres (x,y) = 
    if x == "Meses" && y == 1
    then 0.0609
    else(if x == "Meses" && y == 6
      then 0.0691
      else(if x == "Meses" && y == 12
        then 0.0744
        else(if x == "Dias" && y == 28
          then 0.0609
          else(if x == "Dias" && y == 182
            then 0.0691
            else(if x == "Dias" && y == 364
              then 0.0744
              else 0.0))))) 
