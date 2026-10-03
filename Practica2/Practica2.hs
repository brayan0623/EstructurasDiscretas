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
