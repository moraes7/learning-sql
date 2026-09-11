-- Selecione produtos que contêm ‘espada’ no nome
SELECT * FROM produtos

-- WHERE DescNomeProduto = 'Espada Longa'

-- fuciona. maneira mais iniciante, usar com poucos valores
-- OR DescNomeProduto = 'Espada Longa '
-- OR DescNomeProduto = 'Espada Curta'

-- outra maneira melhorada com IN
-- menos custoso
-- usar com poucos valores
-- usar quando sabe exatamente o que procurar
-- WHERE DescNomeProduto IN ('Espada Longa', 'Espada Curta', 'Espada de Gelo')

-- LIKE é procurar algo que é parecido (look alike)
-- o problema do LIKE é que ele é custoso, mais do que as comparações de cima
-- % é um coringa, no caso com Espada o resto não importa
-- nao é case sensitive
-- para procurar o final da palavra com 'longa' se usaria '%longa'
-- WHERE DescNomeProduto LIKE 'espada%'

-- procurar produtos com o 'de' no meio
-- WHERE DescNomeProduto LIKE '%de%

-- procurar produtos com 1
-- WHERE IdProduto LIKE '%1%'

-- igualdade '=' é a melhor maneira
-- a melhor maneira de fazer essa query, seria procurar pela descriçao do produto
-- isso vem muito de como o dado esta organizado
WHERE DescCategoriaProduto = 'espada'