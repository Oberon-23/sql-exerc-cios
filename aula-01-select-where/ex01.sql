-- Aula 01 | Exercício 1
-- Liste id, categoria e prioridade de todos os chamados com status 'Resolvido'.
-- Resultado esperado: 13 linhas.

SELECT id, categoria, prioridade
FROM chamados
WHERE status = 'Resolvido';
