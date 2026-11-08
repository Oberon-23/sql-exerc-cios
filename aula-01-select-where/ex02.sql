-- Aula 01 | Exercício 2
-- Liste todas as colunas dos chamados de prioridade 'Crítica'
-- que estão com status 'Aberto'.
-- Resultado esperado: 2 linhas (ids 3 e 7).

SELECT *
FROM chamados
WHERE status = 'Aberto'
  AND prioridade = 'Crítica';
