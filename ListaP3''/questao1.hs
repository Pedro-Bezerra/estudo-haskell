{-
Implemente uma função que receba uma lista de inteiros (que pode ou não estar ordenada) e 
retorne uma lista ordenada em ordem crescente formada apenas pelos números ímpares da lista 
recebida.
    Exemplo: impares [3,6,4,8,1,9,7]
    Saída: [1,3,7,9]
-}
import Data.List
impares xs = sort (filter odd xs)
impareS xs = sort (filter (\x -> x `mod` 2 == 1) xs)

impares' xs = sort [ x | x <- xs, x `mod` 2 == 1]
impares'' xs = sort [ x | x <- xs, odd x]