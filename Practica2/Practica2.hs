--Actividades para la Practica 2.

{- Funcion: reconversion
Descripcion: recibe un dato numerico de tipo Float y quita tres ceros al valor ingresado.
Uso: reconversion 1000 = 1.0
-}

reconversion :: Float -> Float
reconversion x = x / 1000



{- Funcion: cashback
Descripcion: calcula el cashback que recibira una TDC con el 10% de un valor numerico convertido a puntos.
Uso: cashback 2500 = 250
-}

cashback :: Float -> Float
cashback x = x / 10



{- Funcion: cashbackMonto
Descripcion: recibe una cantidad determinada de puntos y devuelve lo equivalente en dinero real.
Cada punto equivale a $0.10.
Uso: cashbackMonto 500 = 50
-}

cashbackMonto :: Float -> Float
cashbackMonto x = x * 0.10



{- Funcion: minutosHoras
Descripcion: recibe los minutos y debe devolver su conversion en horas
Uso: minutosHoras 112 = 1 hora y 52 minutos
-}

minutosHoras :: Int -> String
minutosHoras x =
  (if x `div` 60 == 1
  then show (x `div` 60) ++ " hora y "
  else show (x `div` 60) ++ " horas y ")
  ++
  (if x `mod` 60 == 1
  then show (x `mod` 60) ++ " minuto "
  else show (x `mod` 60) ++ " minutos ")



{- Funcion: esEstafa
Descripcion: detecta si un comerciante esta siendo estafado si un cliente entrega un billete de alta denominacion que excede el valor de un producto x  con el fin de pagarlo, el comerciante devulve el cambio corresopondiente y el cliente entrega otro billete con una denominacion exacta al precio del producto x mientras exige que se le devuelva su billete inicial. El comerciante recibe el nuevo billete y devuelve el billete inicial de alta denominacion pero el cliente no devuelve el cambio inicial que recibio por el primer billete de alta denominacio y el comerciante termina con una cantidad de dinero menor al precio del producto x. La funcion esEstafa trabaja con valores tipo bool, si es estafa responde True, si no lo es, responde False.
Uso: esEstafa 100 200 100 0 = True
-}

esEstafa :: Int -> Int -> Int -> Int -> Bool
esEstafa precio billeteGrande billeteChico cambioDevuelto =
    if (billeteChico - (billeteGrande - precio) + cambioDevuelto) < precio
    then True
    else False



{- Funcion: esDescendente
Descripcion: usa valores booleanos para señalar si una secuencia de numeros fue ingresada de manera descendente o no. Si es descendente, True, si no lo es, False.
Uso: esDescendente 10 9 8 7 = True
-}

esDescendente :: Float -> Float -> Float -> Float -> Bool
esDescendente w x y z =
  if w > x && x > y && y > z
  then True
  else False



{- Funcion: imc
Descripcion: imc recibe 2 parametros de tipo float y devuelve un valor de tipo String.Ingresas su peso en kg y posteriormente tu estatura en metros, imc devolvera un valor distinto segun sea el caso (bajo peso, peso normal, sobrepeso, obesidad, obesidad clase 1, obesidad clase 2, obesidad clase 3)
Uso: imc 53.5 1.61 = peso normal
-}

imc :: Float -> Float -> String
imc x y =
  if x / y^2 < 18.5
  then  " Bajo peso "
  else if x / y^2 >= 18.5 && x / y^2 <= 24.9
    then " Peso normal "
    else if x / y^2 >= 25 && x / y^2 <= 29.9
      then " Sobrepeso "
      else if x / y^2 >= 29.99 && x / y^2 < 30
        then " Obesidad "
	  else if x / y^2 >= 30 && x / y^2 <= 34.9
	    then " Obesidad clase 1 "
	    else if x / y^2 >= 35 && x / y^2 <= 39.9
	      then " Obesidad clase 2 "
	      else " Obesidad clase 3 "



{- Funcion: hipotenusa
Descripcion: recibe 2 datos de tipo Float donde b representa la longitud de la base y h, la longitud de su altura. La funcion devulve un valor Float que representa la longitud de la hipotenusa de dicho triangulo.
Uso: hipotenusa 9.0 12.0 = 15.0
-}

hipotenusa :: Float -> Float -> Float
hipotenusa b h = sqrt (b^2 + h^2)



{- Funcion: pendiente
Descripcion: la funcion recibe 2 tuplas con datos de tipo Float, que representan las coordenadas donde estan ubicados 2 puntos distintos, y debe devolver un valor de tipo Float que representa la pendiente de la recta que pasa por ambos puntos.
Uso: pendiente (3.0, 2.0) (7.0, 8.0) = 1.5
-}

pendiente :: (Float, Float) -> (Float, Float) -> Float
pendiente (x1, y1) (x2, y2) = (y2 - y1) / (x2 - x1)



{- Funcion: distanciaPuntos
Descripcion: la funcion recibe 2 tuplas con datos de tipo Float, que representan las coordenadas de 2 puntos especificos, distanciaPuntos devuelve un dato de tipo Float que representa la distancia entre ambas coordenadas.
Uso: distanciaPuntos (2.0, 1.0) (5.0, 5.0) = 5.0
-}

distanciaPuntos :: (Float, Float) -> (Float, Float) -> Float
distanciaPuntos (x1, y1) (x2, y2) = sqrt ((x2 - x1)^2 + (y2 - y1)^2)