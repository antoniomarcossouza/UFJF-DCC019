{-
1. Considere o seguinte tipo de dados algébrico para denotar os números naturais na notação de Peano:
data Nat = Zero | Suc Nat

Como base nesse tipo de dados, defina as seguintes funções:
(a) Função que soma dois números naturais na notação de Peano:
    plus :: Nat −> Nat −> Nat
(b) Função que multiplica dois números naturais na notação de Peano:
    mult :: Nat −> Nat −> Nat
(c) Função que dados dois números naturais na notação de Peano, determinar se o primeiro é menor ou igual ao segundo:
    leq :: Nat −> Nat −> Bool
-}

{-
2. Usando as funções de ordem superior foldl ou foldr, implemente as seguintes funções:

(a) A função elem :: Eq a => a− > [a] − > Bool, que dado um elemento e e uma lista retorna verdadeiro caso o elemento esteja na lista e retorna falso, caso contrário
(b) A função remdups :: Eqa => [a] − > [a] que remove elementos iguais adjacentes de uma lista, conservando só um dos elementos. Por exemplo, remdups[1, 2, 2, 3, 3, 3, 1, 1] = [1, 2, 3, 1].
-}

{-
3. Uma fila é um tipo de dados em que o primeiro elemento a ser inserido na fila é o primeiro a ser removido. A respeito de filas, faça:

(a) Um tipo de dado algébrico que represente uma fila (Queue), polimórfico, e operações para inserção (enqueue), remoção (dequeue) e iniciar uma fila com os elementos de uma lista (init). Os tipos das funções devem ser:
    enqueue :: a −> Queue a −> Queue a
    dequeue :: Queue a −> (a , Queue a )
    init :: [ a ] −> Queue a
(b) Instancie seu tipo de dados para as classes de tipo Functor e Applicative, cujas definições estão a seguir.
    class Functor f where
    fmap :: ( a −> b) −> f a −> f b
    
    class Functor m => Applicative m where
    pure :: a −> m a
    (<∗>) :: m ( a −> b) −> m a −> m b
(c) Qual o resultado da avaliação da expressão
    pure (∗) <∗> init [ 1 , 2 , 3 ] <∗> pure 2
-}