-- Devuelve los elementos positivos de la lista en una lista
positivos :: [Int] -> [Int]
positivos [] = []
positivos (x:xs) | (x > 0) = x:positivos xs
                 | otherwise = positivos xs

-- Dada una lista de cualquier tipo con datos homogeneos 
-- nos devuelve una lista con todos los elementos duplicados
duplicarLista :: [alpha] -> [alpha]
duplicarLista [] = []
duplicarLista (x:xs) = x:x:duplicarLista xs

-- Cuenta los elementos de una lista de cualquier tipo
contarElementos :: [alpha] -> Int
contarElementos [] = 0
contarElementos (x:xs) = 1 + contarElementos xs

-- Cuenta solo los elementos pares de una lista
contarElementosPares :: [Int] -> Int
contarElementosPares [] = 0
contarElementosPares (x:xs) | (mod x 2 == 0) = 1 + contarElementosPares xs
                            | otherwise = contarElementosPares xs

-- Invierte todos los elementos de una lista
invertirLista:: [alpha] -> [alpha]
invertirLista [] = []
invertirLista (x:xs) = invertirLista xs ++ [x]

-- Compuerta logica and
myAnd :: Bool -> Bool -> Bool
myAnd True x = x 
myAnd False x = False

-- Compuerta logica or
myOr :: Bool -> Bool -> Bool
myOr True x = True
myOr False x = x

-- Devuelve el valor absoluto de cada elemento de la lista
valorAbsoluto :: [Int] -> [Int]
valorAbsoluto [] = []
valorAbsoluto (x:xs) | (x >= 0) = x:valorAbsoluto xs
                     | otherwise = -x:valorAbsoluto xs

-- Devuelve la suma de los numeros impares de la lista                     
sumaImpares :: [Int] -> Int
sumaImpares [] = 0
sumaImpares (x:xs) | (mod x 2 /= 0) = x + sumaImpares xs
                   | otherwise = sumaImpares xs

-- Devuelve el menor numero de una lista
obtenerMenor :: [Int] -> Int
obtenerMenor [x] = x
obtenerMenor (x:xs) | (x <= obtenerMenor xs) = x
                    | otherwise = obtenerMenor xs

-- Remueve el menor numero de una lista
removerMenor :: [Int] -> [Int]
removerMenor [] = []
removerMenor (x:xs) | (x == (obtenerMenor (x:xs))) = xs
                    | otherwise = x:removerMenor xs

-- Uso del if
-- Retorna True si el numero es par, en caso contrario
-- retorna False
ifPar :: Int -> Bool
ifPar num = if (mod num 2 == 0) then True else False