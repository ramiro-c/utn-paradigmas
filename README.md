# Repositorio utn-paradigmas

### Material realizado en la materia Paradigmas de programación | UTN - FRLP

Todos los programas que se necesitan para ejecutar el código se encuentran en la [página oficial de Haskell.](https://www.haskell.org/platform/)

Para ejecutar el código lo unico que debemos hacer es copiar el código de alguno de los ejemplos y dejarlo en un archivo con extensión _.hs_, ir a la consola, movernos hasta la carpeta donde se encuenta nuestro archivo y ejecutar:
```
ghci
:l archivo.hs
```
Y luego lo que debemos hacer es escribir el nombre de la función que tenga el código que hayas copiado pasándole como argumento lo que corresponda, por ejemplo:

```Haskell
-- Este seria un ejemplo de codigo en Haskell
-- Esta funcion lo que nos permite es obtener los numeros negativos de una lista de numeros
negativos :: [Int] -> [Int]
negativos [] = []
negativos (x:xs) | (x < 0) = x:negativos xs
                 | otherwise = negativos xs
```                 
Cuando nos aparezca **\*Main>** en la consola lo que debemos escribir es:
```Haskell
positivos [1,2,-3,0,4,-10]
```
El resultado será:
```Haskell
[-3,-10]
```
---
**A continuación se encuentra una lista de ejemplos sencillos que se asimilan a la práctica de la materia, con el tiempo iré agregando más.**

**Ejemplo 1**
```Haskell
-- Devuelve los elementos positivos de la lista en una lista
positivos :: [Int] -> [Int]
positivos [] = []
positivos (x:xs) | (x > 0) = x:positivos xs
                 | otherwise = positivos xs
```
**Ejemplo 2**
```Haskell
-- Dada una lista de cualquier tipo con datos homogeneos 
-- nos devuelve una lista con todos los elementos duplicados
duplicarLista :: [alpha] -> [alpha]
duplicarLista [] = []
duplicarLista (x:xs) = x:x:duplicarLista xs
```
**Ejemplo 3**
```Haskell
-- Cuenta los elementos de una lista de cualquier tipo
contarElementos :: [alpha] -> Int
contarElementos [] = 0
contarElementos (x:xs) = 1 + contarElementos xs
```
**Ejemplo 4**
```Haskell
-- Cuenta solo los elementos pares de una lista
contarElementosPares :: [Int] -> Int
contarElementosPares [] = 0
contarElementosPares (x:xs) | (mod x 2 == 0) = 1 + contarElementosPares xs
                            | otherwise = contarElementosPares xs
```
**Ejemplo 5**
```Haskell
-- Invierte todos los elementos de una lista
invertirLista:: [alpha] -> [alpha]
invertirLista [] = []
invertirLista (x:xs) = invertirLista xs ++ [x]
```
**Ejemplo 6**
```Haskell
-- Compuerta logica and
myAnd :: Bool -> Bool -> Bool
myAnd True x = x 
myAnd False x = False
```
**Ejemplo 7**
```Haskell
-- Compuerta logica or
myOr :: Bool -> Bool -> Bool
myOr True x = True
myOr False x = x
```
**Ejemplo 8**
```Haskell
-- Devuelve el valor absoluto de cada elemento de la lista
valorAbsoluto :: [Int] -> [Int]
valorAbsoluto [] = []
valorAbsoluto (x:xs) | (x >= 0) = x:valorAbsoluto xs
                     | otherwise = -x:valorAbsoluto xs
```
**Ejemplo 9**
```Haskell
-- Devuelve la suma de los numeros impares de la lista                     
sumaImpares :: [Int] -> Int
sumaImpares [] = 0
sumaImpares (x:xs) | (mod x 2 /= 0) = x + sumaImpares xs
                   | otherwise = sumaImpares xs
```
**Ejemplo 10**
```Haskell
-- Devuelve el menor numero de una lista
obtenerMenor :: [Int] -> Int
obtenerMenor [x] = x
obtenerMenor (x:xs) | (x <= obtenerMenor xs) = x
                    | otherwise = obtenerMenor xs
```
---
**Autor**
- [Cerdá, Ramiro](https://github.com/ramiro-c)
