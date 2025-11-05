{-
2- Crie um tipo de dados usando a sintaxe de registro para representar um carro contendo as informações da marca (company), modelo (model) e ano de fabricação (year)

Use as funções de projeção criadas para obter cada um dos campos de um valor (definido por você).

Qual o tipo das funções de projeção?
-}

{-
3- Faça uma função para inserir (insert :: a -> Tree a -> Tree a) um elemento em uma árvore binária
-}

{-
4- Qual o resultado da avaliação da expressão:
  foldr insert Empty [5, 1, 4, 2, 3]
-}

{-
5- Seja a definição da linguagem da lógica proposicional, formada pelo conjunto de todas as
fórmulas (F) definidas recursivamente da seguinte forma:
  - variáveis proposicionais, denotadas pelas letras minúsculas p, q, r e s, possivelmente com índices (0, 1, 2, ...), são fórmulas;
  - os símbolos ⊥ e ⊤ são fórmulas, que representam os valores lógicos falso e verdadeiro, respectivamente;
  - se α é uma fórmula, então ¬α é uma fórmula;
  - se α e β são fórmulas, então (α ∨ β), (α ∧ β), (α → β) e (α ↔ β) são fórmulas.

Uma variável proposicional pode assumir apenas dois valores lógicos, verdadeiro ou falso, assim podemos
construir uma tabela com todas as possíveis combinações de valores que uma variável proposicional pode
assumir e determinar o valor lógico de fórmulas mais complexas, a partir do significado dos seus conectivos lógicos.
Essa tabela é denominada de tabela verdade.
Quando uma fórmula tem valor lógico sempre verdade, independente dos valores lógicos das proposições que a
compõem, dizemos que a fórmula é uma tautologia.
Os itens subsequentes têm como objetivo construir um programa que verifica se uma fórmula lógica é uma tautologia.

a) crie um tipo de dados para representa a linguagem da lógica proposicional.
Considere que uma variável proposicional será representada somente por um caractere.

b) desenvolva um tipo de dados que associa valores lógicos à variáveis proposicionais.
Crie funções que dada uma associação e uma variável retorna o valor lógico da mesma (look) e uma que adiciona
um valor lógico de uma variável proposicional à uma associação (add).
Por exemplo, em uma associação que contém a variável p associado ao valor lógico True e q ao valor lógico False,
a operação look de p deve retornar True e look de q deve retorna False.

Já a expressão add r False tem como efeito criar um nova associação, a partir da anterior, na qual a variável
proposicional r tem valor lógico False.

c) defina a função eval que tem como parâmetros uma associação de variáveis proposicionais para valores lógicos
e uma fórmula e, tem como resultado, o valor lógico da fórmula.

d) defina uma função que dada uma fórmula retorna uma lista que contém todas as variáveis proposicionais da fórmula.

e) usando a função bools, conforme definida a seguir, que retorna todas as combinações possíveis de valores lógicos
com n posições (n inteiro maior que 1), faça uma função que determina se uma fórmula é uma tautologia.
-}

bools :: Int -> [[Bool]]
bools 1 = [[True], [False]]
bools n = (map (True :) (bools (n - 1))) ++ (map (False :) (bools (n - 1)))

{-
6- Defina um tipo de dado que pode representar uma árvore n-ária. Em seguida:

a) defina uma função que retorne a altura da árvore
b) defina uma função que verifica quantos filhos tem a raiz
-}
