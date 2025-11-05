{-
1) Defina as funções map e filter usando foldr
-}

{-
2) Usando foldl, implemente uma função (bin2int) que dada uma lista contendo apenas 0's e 1's, retorna o número inteiro correspondente na base 10. Ex.:
    - bin2int [1,1] = 3
    - bin2int [1,1,0] = 6
-}

{-
3) Como um list comprehension [f x | x <-  xs, p x] pode ser expresso usando as funções de ordem superior map e filter?
-}

{-
4) Dê uma definição para a função length usando as funções map e sum.
-}

{-
6)  Usando foldl, defina a função dec2int :: [Int] -> Int que converte um número decimal (representado por uma lista de dígitos) em um inteiro.
Por exemplo:
  - dec2int [2,3,4,5] = 2345
-}

{-
7) Usando foldr, defina as seguintes funções:

a) replace :: Eq a => a -> a -> [a] -> [a], que dado dois elementos x e y e uma lista xs, substitui toda ocorrência de x por y em xs

b) count :: Eq a => [a] -> [(Int,a)] que computa a frequência de cada elemento em uma dada lista
-}
