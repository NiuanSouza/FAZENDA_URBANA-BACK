INSERT INTO functionality (name) VALUES 
('Fornecedores'), 
('Vendas'), 
('Produção'), 
('Administrador');

-- Inserindo usuários com hash BCrypt (Senha: Troca123)
INSERT INTO users (id_user, name, email, password_hash, status) VALUES
('G764AE9', 'Maria Clara Sousa Torres', 'maria.clara@example.com', '$2a$10$UQJuP8qkPlJiLegdrX8Dce.28Q4LJPXuDpdIHv/fWTe2u6kORBfc6', 'active'),
('G783GA4', 'Niuan Spolidorio Da Rocha Souza', 'niuan.spolidorio@example.com', '$2a$10$UQJuP8qkPlJiLegdrX8Dce.28Q4LJPXuDpdIHv/fWTe2u6kORBfc6', 'active'),
('G79JBF6', 'Gabriel Contatori de Assis', 'gabriel.contatori@example.com', '$2a$10$UQJuP8qkPlJiLegdrX8Dce.28Q4LJPXuDpdIHv/fWTe2u6kORBfc6', 'active'),
('G872EC9', 'Sabrina Aparecida V Da Silva', 'sabrina.silva@example.com', '$2a$10$UQJuP8qkPlJiLegdrX8Dce.28Q4LJPXuDpdIHv/fWTe2u6kORBfc6', 'active'),
('N3573A1', 'Matheus Rafael Da Silva Jesus', 'matheus.jesus@example.com', '$2a$10$UQJuP8qkPlJiLegdrX8Dce.28Q4LJPXuDpdIHv/fWTe2u6kORBfc6', 'active'),
('G71GEG3', 'Victor Hugo Rodrigues Barros Antunes', 'victor.antunes@example.com', '$2a$10$UQJuP8qkPlJiLegdrX8Dce.28Q4LJPXuDpdIHv/fWTe2u6kORBfc6', 'active');

INSERT INTO user_permission (id_user, id_functionality) VALUES 
('G783GA4', 1), ('G764AE9', 1), ('G783GA4', 2), ('G79JBF6', 2),
('G783GA4', 3), ('N3573A1', 3), ('G783GA4', 4), ('G71GEG3', 4);

INSERT INTO suppliers (cnpj, name, legal_name, phone1, phone2, email, status, type, additional_info, address, address_number, neighborhood, city, state, country, zip_code) VALUES
('12345678000195', 'Fazenda Verde', 'Agronegócios Fazenda Verde Ltda', '11-98765-4321', '11-98888-8888', 'contato@fazendaverde.com', 'active', 'Produtor', NULL, 'Rua das Flores', 123, 'Jardim das Plantas', 'São Paulo', 'SP', 'Brasil', '01234-567'),
('98765432000107', 'Hortifruti Natural', 'Hortifruti Natural Ltda', '21-97654-3210', '21-97654-3210', 'contato@hortifrutinhatural.com', 'active', 'Distribuidor', 'Entregas diárias', 'Avenida Verde', 456, 'Centro', 'Rio de Janeiro', 'RJ', 'Brasil', '02345-678'),
('45678912000145', 'Sementes do Brasil', 'Sementes do Brasil Ltda', '31-98765-4321', '31-98888-8888', 'contato@sementesbrasil.com', 'active', 'Fornecedor', 'Sementes orgânicas', 'Rua das Sementes', 789, 'Vila Verde', 'Belo Horizonte', 'MG', 'Brasil', '03456-789');

INSERT INTO input (id_input, name, quantity, validity, expiration_date, cnpj_supplier) VALUES
(1, 'Fertilizante Orgânico', 100, 'AVAILABLE', '2025-12-31', '12345678000195'),
(2, 'Agrotóxico Natural', 50, 'AVAILABLE', '2024-06-30', '98765432000107'),
(3, 'Semente de Tomate', 200, 'AVAILABLE', '2024-05-15', '45678912000145'),
(4, 'Semente de Alface', 150, 'AVAILABLE', '2024-07-20', '45678912000145'),
(5, 'Semente de Morango', 300, 'AVAILABLE', '2024-08-10', '12345678000195');

INSERT INTO production (start_date, end_date, product, status) VALUES
('2024-01-10', '2024-04-15', 'Tomate', 'Active'),
('2024-02-15', '2024-05-20', 'Alface', 'Active'),
('2024-03-01', '2024-06-01', 'Morango', 'Active'),
('2024-04-01', '2024-07-10', 'Cenoura', 'Cancelled'),
('2024-05-15', '2024-08-30', 'Pimentão', 'Active');

INSERT INTO input_production (id_input, id_production, quantity) VALUES
(1, 1, 10), (2, 2, 5), (3, 1, 20), (4, 3, 15), (5, 5, 25); 

INSERT INTO product (id_product, name, category) VALUES
(1, 'Tomate Cereja', 'Vegetal'), 
(2, 'Alface', 'Vegetal'), 
(3, 'Manjericão', 'Erva'),
(4, 'Morango', 'Fruta'), 
(5, 'Rúcula', 'Vegetal'), 
(6, 'Cebolinha', 'Erva'),
(7, 'Pimentão', 'Vegetal'), 
(8, 'Espinafre', 'Vegetal'), 
(9, 'Cenoura', 'Vegetal'), 
(10, 'Pepino', 'Vegetal');

INSERT INTO batch (id_product, quantity, id_production, status, expiration_date) VALUES
(1, 50, 1, 'AVAILABLE', '2025-01-01'),
(2, 30, 2, 'AVAILABLE', '2025-02-01'),
(3, 40, 3, 'AVAILABLE', '2025-03-01'),
(4, 20, 4, 'OUT_OF_STOCK', '2024-01-01'),
(5, 10, 5, 'AVAILABLE', '2025-04-01');

INSERT INTO customer (id_customer, name, phone1, phone2, cnpj, ie, email, address_number, address_name, neighborhood, city, state, zip_code, type, status) VALUES
(1, 'Supermercado Verde', '11-91234-5678', '11-91234-5678', '12345678000195', 'IE123456', 'contato@supermercadoverde.com', 100, 'Rua do Comércio', 'Centro', 'São Paulo', 'SP', '01000-000', 'Jurídico', 'Active'),
(2, 'Empório Natural', '21-92345-6789', NULL, '98765432000107', NULL, 'contato@emporionatural.com', 200, 'Avenida da Saúde', 'Bela Vista', 'Rio de Janeiro', 'RJ', '02000-000', 'Jurídico', 'Active'),
(3, 'Supermercado do Povo', '31-93456-7890', '31-93456-7891', '45678912000145', NULL, 'contato@supermercadodopovo.com', 300, 'Rua da Amizade', 'Jardim Botânico', 'Belo Horizonte', 'MG', '03000-000', 'Jurídico', 'Active'),
(4, 'Distribuidora de Alimentos Boa Sorte', '41-94456-7890', '41-94456-7891', '11223344000190', NULL, 'contato@boasorte.com', 400, 'Rua da Esperança', 'Centro', 'Curitiba', 'PR', '04000-000', 'Jurídico', 'Active'),
(5, 'Ana Paula Silva', '11-91234-5678', '11-92234-5678', NULL, NULL, 'anapaula@exemplo.com', 101, 'Rua das Flores', 'Jardim Primavera', 'São Paulo', 'SP', '01100-000', 'Físico', 'Active'),
(6, 'Carlos Alberto Santos', '21-92345-6789', NULL, NULL, NULL, 'carlos@exemplo.com', 202, 'Avenida dos Anjos', 'Centro', 'Rio de Janeiro', 'RJ', '02100-000', 'Físico', 'Active');

INSERT INTO sales (number, additional_info, id_customer, status) VALUES 
('VEN001', 'Venda de produtos frescos', 1, 'In progress'),
('VEN002', 'Compra de produtos orgânicos', 2, 'Delivered'),
('VEN003', 'Pedido de frutas e verduras', 3, 'Cancelled'),
('VEN004', 'Venda de cereais', 4, 'In progress'),
('VEN005', 'Pedido de produtos de limpeza', 5, 'Delivered'),
('VEN006', 'Venda de produtos para Ana Paula', 6, 'In progress');

INSERT INTO sales_items (id_sale, id_batch, quantity, total_value) VALUES
(1, 1, 10, 150.00), 
(2, 2, 5, 250.00), 
(3, 3, 20, 500.00),
(4, 4, 15, 750.00), 
(5, 1, 30, 900.00), 
(6, 2, 10, 1200.00);
