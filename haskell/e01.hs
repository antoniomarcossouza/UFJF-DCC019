{-
3) Defina uma função que retorna o n-ésimo elemento da série de Fibonacci.
Defina uma versão da função usando cada uma das maneiras vista:
  a) com expressão if-then-else
  b) com casamento de padrão
  c) usando guardas
-}

fib n = if n == 0 then 0 else if n > 0 && n <= 2 then 1 else fib (n - 1) + fib (n - 2)

fib' 0 = 0
fib' 1 = 1
fib' 2 = 1
fib' n = fib' (n - 1) + fib' (n - 2)

fib'' n
  | n == 0 = 0
  | n > 0 && n <= 2 = 1
  | otherwise = fib'' (n - 1) + fib'' (n - 2)

{-
4) Defina as seguintes funções sobre lista
  a) função que retorna a cauda de uma lista (mtail), tal que
        mtail [1,2,3] = [2,3]
  b) função que reverte uma lista (mreverse), de modo que
        mreverse [1,2,3] = [3,2,1]
  c) função que remove os n primeiros elementos de uma lista (mdrop), tal que
      mdrop 0 [1,2,3] = [1,2,3]
      mdrop 2 [1,2,3] = [3]
      mdrop 5 [1,2,3] = []
  d) função que dada duas listas, retorna uma lista formados por um elemento
  da primeira e um elemento da segunda (mzip). Por exemplo,
      mzip [1,2,3] ['a','b'] = [(1,'a'), (2, 'b')]
      mzip [1] ['a','b'] = [(1,'a')]
      mzip [1,2,3] [] = []
  e) função que intercala duas listas (merge). Tal que
    merge "abc" "xyz" = "axbycz"
  f) função que dado um elemento x e uma lista l, insere x entre os elementos de l (intersp):
    intersp ',' "1234" = "1,2,3,4"
  g) função que dada uma lista, produz um par de listas em que ambas possuem metade dos elementos
  da lista original. Se a lista possuir tamanho ímpar, então uma das listas terá um elemento
  a mais que a outra (mixHalf) :
    mixHalf [1,2,3,4,5] = ([1,3,5],[2,4])
-}

mtail :: [a] -> [a]
mtail [] = []
mtail (_ : xs) = xs

mreverse :: [a] -> [a]
mreverse [] = []
mreverse (x : xs) = mreverse xs ++ [x]

mdrop :: Int -> [a] -> [a]
mdrop 0 xs = xs
mdrop _ [] = []
mdrop n (_ : xs) = mdrop (n - 1) xs

mzip :: [a] -> [b] -> [(a, b)]
mzip _ [] = []
mzip [] _ = []
mzip (x : xs) (y : ys) = (x, y) : mzip xs ys

merge :: [a] -> [a] -> [a]
merge x [] = x
merge [] x = x
merge (x : xs) (y : ys) = x : y : merge xs ys

intersp :: a -> [a] -> [a]
intersp _ [] = []
intersp _ [a] = [a]
intersp y (x : xs) = x : y : intersp y xs

mixHalf :: [a] -> ([a], [a])
mixHalf [x] = ([x], [])
mixHalf (x : y : xs) = (x : xs1, y : xs2) where (xs1, xs2) = mixHalf xs