
USE paxeterna;

INSERT INTO Cliente (cpf, nome, rg, data_nascimento, logradouro, num_endereco, bairro, cep, cidade, uf) VALUES
('11122233344', 'Ana Paula Souza',       '1234567',  '1978-03-15', 'Rua das Flores',       '12',  'Centro',        '45000000', 'Vitória da Conquista', 'BA'),
('22233344455', 'Carlos Eduardo Lima',   '2345678',  '1965-07-22', 'Av. Recreio',          '200', 'Recreio',       '45001000', 'Vitória da Conquista', 'BA'),
('33344455566', 'Fernanda Costa',        '3456789',  '1990-11-05', 'Rua do Comércio',      '45',  'Centro',        '45002000', 'Vitória da Conquista', 'BA'),
('44455566677', 'Roberto Alves',         '4567890',  '1955-01-30', 'Rua Boa Vista',        '78',  'Boa Vista',     '45003000', 'Vitória da Conquista', 'BA'),
('55566677788', 'Mariana Ferreira',      '5678901',  '1982-09-18', 'Rua São João',         '33',  'São João',      '45004000', 'Vitória da Conquista', 'BA'),
('66677788899', 'José Antônio Pereira',  '6789012',  '1970-04-12', 'Av. Brasil',           '510', 'Brasil',        '45005000', 'Vitória da Conquista', 'BA'),
('77788899900', 'Luciana Rodrigues',     '7890123',  '1988-06-25', 'Rua Sete de Setembro', '99',  'Centro',        '45006000', 'Vitória da Conquista', 'BA'),
('88899900011', 'Paulo Henrique Mota',   '8901234',  '1975-12-03', 'Rua das Palmeiras',    '14',  'Palmeiras',     '45007000', 'Vitória da Conquista', 'BA'),
('99900011122', 'Beatriz Santos',        '9012345',  '1993-08-09', 'Av. Olímpio Vital',    '320', 'Olímpio Vital', '45008000', 'Vitória da Conquista', 'BA'),
('10011122233', 'Marcelo Nascimento',    '0123456',  '1960-05-17', 'Rua Progresso',        '67',  'Progresso',     '45009000', 'Vitória da Conquista', 'BA'),
('10111222333', 'Simone Barbosa',        '1122334',  '1985-02-28', 'Rua Nova',             '22',  'Nova',          '45010000', 'Vitória da Conquista', 'BA'),
('10211222334', 'Diego Carvalho',        '2233445',  '1995-10-14', 'Rua Esperança',        '55',  'Esperança',     '45011000', 'Vitória da Conquista', 'BA');

INSERT INTO Telefone (telefone, cpf) VALUES
('77991110001', '11122233344'),
('77992220002', '22233344455'),
('77993330003', '33344455566'),
('77994440004', '44455566677'),
('77995550005', '55566677788'),
('77996660006', '66677788899'),
('77997770007', '77788899900'),
('77998880008', '88899900011'),
('77999990009', '99900011122'),
('77981110010', '10011122233'),
('77982220011', '10111222333'),
('77983330012', '10211222334'),
('77981110099', '11122233344');

INSERT INTO Recurso (id_recurso, nome, valor, tipo, quantidade, classificacao, unidade_medida) VALUES
(1,  'Caixão Bronze Standard',    1200.00, 'produto', 15, 'caixao',      'unidade'),
(2,  'Caixão Mogno Premium',      3500.00, 'produto', 8,  'caixao',      'unidade'),
(3,  'Caixão Pinus Simples',       600.00, 'produto', 20, 'caixao',      'unidade'),
(4,  'Caixão Carvalho Luxo',      5000.00, 'produto', 5,  'caixao',      'unidade'),
(5,  'Caixão Mogno Premium Plus', 4200.00, 'produto', 6,  'caixao',      'unidade'),
(6,  'Arranjo de Rosas',           350.00, 'produto', 30, 'flores',      'unidade'),
(7,  'Coroa de Flores',            520.00, 'produto', 25, 'flores',      'unidade'),
(8,  'Translado Local',            150.00, 'servico', 99, 'translado',   'km'),
(9,  'Translado Interestadual',    400.00, 'servico', 99, 'translado',   'km'),
(10, 'Uso de Câmara Ardente',      800.00, 'servico', 10, 'velorio',     'unidade'),
(11, 'Velório Capela Simples',    1000.00, 'servico', 5,  'velorio',     'unidade'),
(12, 'Mortalha Standard',          180.00, 'produto', 40, 'mortalha',    'unidade'),
(13, 'Mortalha Premium',           350.00, 'produto', 20, 'mortalha',    'unidade'),
(14, 'Tanatopraxia Básica',        700.00, 'servico', 99, 'tanatopraxia','unidade'),
(15, 'Tanatopraxia Completa',     1200.00, 'servico', 99, 'tanatopraxia','unidade');

INSERT INTO Contrato (id_contrato, fk_Cliente_cpf, data_inicio, data_termino, valor_contrato, status, data_obito) VALUES
(1,  '11122233344', '2025-01-10', '2026-01-10', 2500.00, 'ativo',     NULL),
(2,  '22233344455', '2025-01-25', '2026-01-25', 1800.00, 'ativo',     NULL),
(3,  '33344455566', '2025-02-14', '2026-02-14', 3200.00, 'ativo',     NULL),
(4,  '44455566677', '2025-03-05', '2026-03-05', 1500.00, 'cancelado', NULL),
(5,  '55566677788', '2025-03-20', '2026-03-20', 2800.00, 'ativo',     NULL),
(6,  '66677788899', '2025-04-08', '2026-04-08', 4500.00, 'ativo',     NULL),
(7,  '77788899900', '2025-05-15', '2026-05-15', 2100.00, 'ativo',     NULL),
(8,  '88899900011', '2025-06-01', '2026-06-01', 3800.00, 'ativo',     NULL),
(9,  '99900011122', '2025-07-19', '2026-07-19', 2200.00, 'ativo',     NULL),
(10, '10011122233', '2025-08-03', '2026-08-03', 5000.00, 'ativo',     NULL),
(11, '10111222333', '2025-09-22', '2026-09-22', 1900.00, 'ativo',     NULL),
(12, '10211222334', '2025-10-11', '2026-10-11', 3100.00, 'ativo',     NULL),
(13, '11122233344', '2024-06-01', '2025-06-01', 2000.00, 'cancelado', NULL);

INSERT INTO Dependentes (cpf, fk_Contrato_id_contrato, nome_dependente, data_nascimento, parentesco, valor_adicional_dependente, data_inicio, data_obito) VALUES
('98765432100', 1, 'Bruno Souza',         '2005-06-10', 'filho',    150.00, '2025-01-10', NULL),
('87654321099', 1, 'Carla Souza',         '2008-03-22', 'filha',    150.00, '2025-01-10', NULL),
('76543210988', 2, 'Helena Lima',         '1968-09-15', 'conjuge',  200.00, '2025-01-25', NULL),
('65432109877', 3, 'Pedro Costa',         '1995-04-30', 'filho',    150.00, '2025-02-14', NULL),
('54321098766', 3, 'Julia Costa',         '1998-11-12', 'filha',    150.00, '2025-02-14', NULL),
('43210987655', 3, 'Marcos Costa',        '1970-07-07', 'conjuge',  200.00, '2025-02-14', NULL),
('32109876544', 5, 'Tiago Ferreira',      '2010-01-05', 'filho',    150.00, '2025-03-20', NULL),
('21098765433', 5, 'Sofia Ferreira',      '2013-08-19', 'filha',    150.00, '2025-03-20', NULL),
('10987654322', 6, 'Renata Pereira',      '1972-05-25', 'conjuge',  200.00, '2025-04-08', NULL),
('19876543211', 8, 'Felipe Mota',         '1999-02-14', 'filho',    150.00, '2025-06-01', NULL),
('29876543212', 8, 'Amanda Mota',         '2001-06-30', 'filha',    150.00, '2025-06-01', NULL),
('39876543213', 9, 'Vera Santos',         '1965-10-10', 'mae',      180.00, '2025-07-19', NULL),
('49876543214', 10, 'Lucas Nascimento',   '2000-03-03', 'filho',    150.00, '2025-08-03', NULL),
('59876543215', 10, 'Laura Nascimento',   '2003-07-21', 'filha',    150.00, '2025-08-03', NULL),
('69876543216', 10, 'Joao Nascimento',    '1940-12-01', 'pai',      180.00, '2025-08-03', NULL);

INSERT INTO Contrato_Recurso (fk_Recurso_id_recurso, fk_Contrato_id_contrato, quantidade, valor) VALUES
(1,  1,  1, 1200.00), (6,  1,  1,  350.00), (10, 1,  1,  800.00),
(2,  2,  1, 3500.00), (12, 2,  1,  180.00),
(3,  3,  1,  600.00), (7,  3,  2, 1040.00), (14, 3,  1,  700.00),
(1,  4,  1, 1200.00), (8,  4,  1,  150.00),
(4,  5,  1, 5000.00), (13, 5,  1,  350.00), (11, 5,  1, 1000.00),
(2,  6,  1, 3500.00), (15, 6,  1, 1200.00), (9,  6,  1,  400.00),
(1,  7,  1, 1200.00), (6,  7,  1,  350.00),
(5,  8,  1, 4200.00), (7,  8,  1,  520.00), (10, 8,  1,  800.00),
(3,  9,  1,  600.00), (12, 9,  1,  180.00),
(4,  10, 1, 5000.00), (15, 10, 1, 1200.00), (9,  10, 1,  400.00),
(2,  11, 1, 3500.00), (6,  11, 1,  350.00),
(1,  12, 1, 1200.00), (14, 12, 1,  700.00), (8,  12, 1,  150.00);

INSERT INTO Pagamento_contrato (fk_Contrato_id_contrato, valor, data_pagamento, forma_pagamento, status) VALUES
(1,  208.33, '2025-01-10', 'pix',              'pago'),
(1,  208.33, '2025-02-10', 'pix',              'pago'),
(1,  208.33, '2025-03-10', 'boleto',           'pago'),
(2,  150.00, '2025-01-25', 'cartao de credito','pago'),
(2,  150.00, '2025-02-25', 'cartao de credito','pago'),
(3,  266.67, '2025-02-14', 'boleto',           'pago'),
(3,  266.67, '2025-03-14', 'boleto',           'pago'),
(4,  125.00, '2025-03-05', 'dinheiro',         'pago'),
(5,  233.33, '2025-03-20', 'pix',              'pago'),
(6,  375.00, '2025-04-08', 'cartao de debito', 'pago'),
(6,  375.00, '2025-05-08', 'cartao de debito', 'pago'),
(7,  175.00, '2025-05-15', 'boleto',           'pago'),
(8,  316.67, '2025-06-01', 'pix',              'pago'),
(8,  316.67, '2025-07-01', 'pix',              'pago'),
(9,  183.33, '2025-07-19', 'dinheiro',         'pago'),
(10, 416.67, '2025-08-03', 'cartao de credito','pago'),
(11, 158.33, '2025-09-22', 'boleto',           'pago'),
(12, 258.33, '2025-10-11', 'pix',              'pago'),
(12, 258.33, NULL,          NULL,              'pendente');

INSERT INTO Compra (id_compra, fk_Cliente_cpf, data_compra, valor_total) VALUES
(1,  '11122233344', '2025-02-10', 5700.00),
(2,  '11122233344', '2025-07-15', 4200.00),
(3,  '22233344455', '2025-03-22', 6800.00),
(4,  '33344455566', '2025-04-05', 3500.00),
(5,  '44455566677', '2025-05-18', 7200.00),
(6,  '55566677788', '2025-06-30', 2900.00),
(7,  '66677788899', '2025-07-12', 5100.00),
(8,  '77788899900', '2025-08-25', 1800.00),
(9,  '88899900011', '2025-09-14', 4600.00),
(10, '99900011122', '2025-10-02', 3200.00),
(11, '10011122233', '2025-11-20', 8500.00),
(12, '10111222333', '2025-12-05', 1200.00);

INSERT INTO Itens (fk_Compra_id_compra, fk_Recurso_id_recurso, quantidade, valor) VALUES
(1,  1,  1, 1200.00), (1,  6,  1,  350.00), (1,  10, 1, 800.00), (1,  14, 1, 700.00), (1, 7, 1, 520.00), (1, 13, 1, 130.00),
(2,  2,  1, 3500.00), (2,  12, 1,  180.00), (2,  8,  1, 150.00), (2, 6, 1, 370.00),
(3,  4,  1, 5000.00), (3,  7,  1,  520.00), (3,  15, 1, 1200.00), (3, 12, 1, 80.00),
(4,  1,  1, 1200.00), (4,  6,  1,  350.00), (4,  14, 1, 700.00), (4, 11, 1, 1000.00), (4, 13, 1, 250.00),
(5,  5,  1, 4200.00), (5,  7,  1,  520.00), (5,  15, 1, 1200.00), (5, 13, 1, 350.00), (5, 9, 1, 400.00), (5, 10, 1, 530.00),
(6,  3,  1,  600.00), (6,  6,  1,  350.00), (6,  12, 1,  180.00), (6, 8, 1, 150.00), (6, 14, 1, 700.00), (6, 13, 1, 120.00), (6, 11, 1, 800.00),
(7,  2,  1, 3500.00), (7,  7,  1,  520.00), (7,  15, 1, 1200.00), (7, 13, 1, 350.00), (7, 12, 1, 80.00),
(8,  1,  1, 1200.00), (8,  6,  1,  350.00), (8,  12, 1,  180.00), (8, 8, 1, 70.00),
(9,  2,  1, 3500.00), (9,  7,  1,  520.00), (9,  14, 1,  700.00), (9, 13, 1, 250.00), (9, 10, 1, 130.00),
(10, 3,  1,  600.00), (10, 6,  1,  350.00), (10, 12, 1,  180.00), (10, 8, 1, 150.00), (10, 11, 1, 800.00), (10, 14, 1, 120.00), (10, 13, 1, 0.00),
(11, 4,  1, 5000.00), (11, 15, 1, 1200.00), (11, 9,  1,  400.00), (11, 7, 1, 520.00), (11, 13, 1, 350.00), (11, 10, 1, 800.00), (11, 12, 1, 230.00),
(12, 3,  1,  600.00), (12, 6,  1,  350.00), (12, 12, 1,  180.00), (12, 8, 1, 70.00);

INSERT INTO Pagamento_avulso (fk_Compra_id_compra, valor, data_pagamento, forma_pagamento, status) VALUES
(1,  5700.00, '2025-02-10', 'pix',              'pago'),
(2,  4200.00, '2025-07-15', 'cartao de credito','pago'),
(3,  6800.00, '2025-03-22', 'boleto',           'pago'),
(4,  3500.00, '2025-04-05', 'pix',              'pago'),
(5,  3600.00, '2025-05-18', 'cartao de debito', 'pago'),
(5,  3600.00, '2025-06-18', 'cartao de debito', 'pago'),
(6,  2900.00, '2025-06-30', 'dinheiro',         'pago'),
(7,  5100.00, '2025-07-12', 'pix',              'pago'),
(8,  1800.00, '2025-08-25', 'cartao de credito','pago'),
(9,  4600.00, '2025-09-14', 'boleto',           'pago'),
(10, 1600.00, '2025-10-02', 'pix',              'pago'),
(10, 1600.00, NULL,          NULL,              'pendente'),
(11, 8500.00, '2025-11-20', 'cartao de credito','pago'),
(12, 1200.00, '2025-12-05', 'dinheiro',         'pago');
