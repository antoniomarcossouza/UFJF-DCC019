import Control.Monad (forever)

{-
1) Crie uma função, soma :: Int -> IO (), que recebe um número inteiro n como parâmetro,
ler n valores de entrada e imprime na tela a média dos valores lidos.
Na sua resposta, use a seguinte função que calcula a média de uma lista de valores:

> media (x:xs) = sum (x:xs) / (fromIntegral $ length (x:xs))

Obs.: você pode criar funções auxiliares caso julgue necessário
-}
media (x : xs) = sum (x : xs) / fromIntegral (length (x : xs))

lerLista 0 = return []
lerLista n = do
  x <- readLn
  xs <- lerLista (n - 1)
  return (x : xs)

soma n = do
  putStrLn $ "Digite " ++ show n ++ " valores:"
  valores <- lerLista n
  putStrLn $ "A média é: " ++ show (media valores)

{-
2) Faça uma função que ler continuamente uma linha e imprime o texto reverso.
Por exemplo, caso a o usuário digite a seguinte frase:

  "A mala nada na lama"

Deve ser impresso:

  "amal an adan alam A"

Use a seguinte função para reverter uma linha:

> reverseWords = unwords . map reverse . reverse . words
-}
reverseWords :: String -> String
reverseWords = unwords . map reverse . reverse . words

reverseLines :: IO ()
reverseLines = forever $ do
  putStrLn "Digite uma frase:"
  linha <- getLine
  putStrLn (reverseWords linha)

-- 3) Faça um programa que ler uma entrada do usuário e determina se é um palíndromo.
isPalindromo = do
  w <- getLine
  if w == reverseWords w
    then putStrLn "É palíndromo"
    else putStrLn "Não é palíndromo"