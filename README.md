# Repositorio utn-paradigmas

Material realizado en la materia Paradigmas de programacion | UTN - FRLP 

Todos los programas que se necesitan para ejecutar el código se encuentra en la [página oficial de Haskell.](https://www.haskell.org/platform/)

Para ejecutar el codigo lo unico que debemos hacer es ir a la consola y ejecutar:
```
ghci
```
**Ejemplo 1**
-- Devuelve los elementos positivos de la lista en una lista
```Haskell
positivos :: [Int] -> [Int]
positivos [] = []
positivos (x:xs) | (x > 0) = x:positivos xs
                 | otherwise = positivos xs
```
**Ejemplo 2**
-- Dada una lista de cualquier tipo con datos homogeneos 
-- nos devuelve una lista con todos los elementos duplicados
```Haskell
duplicarLista :: [alpha] -> [alpha]
duplicarLista [] = []
duplicarLista (x:xs) = x:x:duplicarLista xs
```
**Ejemplo 3**
-- Cuenta los elementos de una lista de cualquier tipo
```Haskell
contarElementos :: [alpha] -> Int
contarElementos [] = 0
contarElementos (x:xs) = 1 + contarElementos xs
```
**Ejemplo 4**
-- Cuenta solo los elementos pares de una lista
```Haskell
contarElementosPares :: [Int] -> Int
contarElementosPares [] = 0
contarElementosPares (x:xs) | (mod x 2 == 0) = 1 + contarElementosPares xs
                            | otherwise = contarElementosPares xs
```
**Ejemplo 5**
-- Invierte todos los elementos de una lista
```Haskell
invertirLista:: [alpha] -> [alpha]
invertirLista [] = []
invertirLista (x:xs) = invertirLista xs ++ [x]
```
**Ejemplo 6**
-- Compuerta logica and
```Haskell
myAnd :: Bool -> Bool -> Bool
myAnd True x = x 
myAnd False x = False
```
**Ejemplo 7**
-- Compuerta logica or
```Haskell
myOr :: Bool -> Bool -> Bool
myOr True x = True
myOr False x = x
```
**Ejemplo 8**
-- Devuelve el valor absoluto de cada elemento de la lista
```Haskell
valorAbsoluto :: [Int] -> [Int]
valorAbsoluto [] = []
valorAbsoluto (x:xs) | (x >= 0) = x:valorAbsoluto xs
                     | otherwise = -x:valorAbsoluto xs
```
**Ejemplo 9**
-- Devuelve la suma de los numeros impares de la lista                     
```Haskell
sumaImpares :: [Int] -> Int
sumaImpares [] = 0
sumaImpares (x:xs) | (mod x 2 /= 0) = x + sumaImpares xs
                   | otherwise = sumaImpares xs
```
**Ejemplo 10**
-- Devuelve el menor numero de una lista
```Haskell
obtenerMenor :: [Int] -> Int
obtenerMenor [x] = x
obtenerMenor (x:xs) | (x <= obtenerMenor xs) = x
                    | otherwise = obtenerMenor xs
```
