-- Banco de treino: service desk (PostgreSQL)

CREATE TABLE analistas (
  id             INT PRIMARY KEY,
  nome           TEXT,
  equipe         TEXT,
  data_admissao  DATE
);

CREATE TABLE chamados (
  id               INT PRIMARY KEY,
  analista_id      INT REFERENCES analistas(id),
  categoria        TEXT,
  prioridade       TEXT,
  status           TEXT,
  data_abertura    DATE,
  data_fechamento  DATE,
  csat             INT
);

INSERT INTO analistas VALUES
(1,'Ana','Suporte N1','2023-03-01'),
(2,'Bruno','Suporte N1','2022-08-15'),
(3,'Carla','Suporte N2','2021-05-10'),
(4,'Diego','Suporte N2','2024-01-20'),
(5,'Elisa','Suporte N1','2024-06-03'),
(6,'Felipe','Suporte N2','2025-02-17');

INSERT INTO chamados VALUES
(1,1,'Rede','Alta','Resolvido','2025-09-20','2025-09-21',5),
(2,1,'Software','Baixa','Resolvido','2025-10-02','2025-10-02',4),
(3,2,'Rede - VPN','Crítica','Aberto','2025-10-05',NULL,NULL),
(4,2,'Acesso','Média','Resolvido','2025-10-06','2025-10-07',3),
(5,3,'Hardware','Alta','Em andamento','2025-10-08',NULL,NULL),
(6,3,'Software','Crítica','Resolvido','2025-10-09','2025-10-09',5),
(7,4,'Rede','Crítica','Aberto','2025-10-10',NULL,NULL),
(8,4,'E-mail','Baixa','Cancelado','2025-10-11','2025-10-12',NULL),
(9,5,'Acesso','Média','Resolvido','2025-10-12','2025-10-13',NULL),
(10,5,'Rede - VPN','Alta','Resolvido','2025-10-14','2025-10-15',2),
(11,1,'Hardware','Média','Resolvido','2025-10-15','2025-10-17',4),
(12,2,'Software','Alta','Cancelado','2025-10-16','2025-10-16',NULL),
(13,3,'Rede','Média','Resolvido','2025-10-18','2025-10-19',4),
(14,4,'Acesso','Crítica','Em andamento','2025-10-20',NULL,NULL),
(15,5,'E-mail','Baixa','Resolvido','2025-10-21','2025-10-21',5),
(16,6,'Software','Média','Aberto','2025-10-22',NULL,NULL),
(17,6,'Rede','Alta','Resolvido','2025-10-23','2025-10-24',3),
(18,1,'Rede - VPN','Crítica','Resolvido','2025-10-25','2025-10-26',4),
(19,3,'Hardware','Baixa','Resolvido','2025-09-28','2025-09-29',5),
(20,2,'Rede','Baixa','Resolvido','2025-11-01','2025-11-02',NULL);
