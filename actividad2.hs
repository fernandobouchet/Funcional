{- Implementar las siguientes funciones, especificando su tipo.
1. sumaTerna: dada una terna de enteros, calcula la suma de sus
tres elementos.
2. todoMenor: dadas dos ternas de números reales, decide si es
cierto que cada coordenada de la primera es menor a la
coordenada correspondiente de la segunda.
3. posicPrimerPar: dada una terna de enteros, devuelve la
posición del primer número par si es que hay alguno, y
devuelve 4 si son todos impares.
4. crearPar :: a -> b -> (a, b): crea un par a partir de sus dos
componentes dadas por separado (debe funcionar para
elementos de cualquier tipo).
5. invertir :: (a, b) -> (b, a): invierte los elementos del par
pasado como parámetro (debe funcionar para elementos de
cualquier tipo). -}

sumaTerna :: (Int, Int, Int) -> Int
sumaTerna (numero1, numero2, numero3) = numero1 + numero2 + numero3

todoMenor :: (Floating a, Ord a) => (a, a, a) -> (a, a, a) -> Bool
todoMenor (a, b, c) (x, y, z) = a < x && b < y && c < z

posicPrimerPar :: (Int, Int, Int) -> Int
posicPrimerPar (x, y, z)
                      | even x = 1
                      | even y = 2
                      | even z = 3
                      | otherwise = 4

crearPar :: a -> b -> (a, b)
crearPar y z = (y, z)

invertir :: (a, b) -> (b, a)
invertir (y, z) = (z, y)