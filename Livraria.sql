-- Criação da tabela de produtos
CREATE TABLE produtos (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    preco DECIMAL(10, 2) NOT NULL,
    estoque INT NOT NULL
);

-- Inserção de produtos
INSERT INTO produtos (nome, preco, estoque) VALUES
('O Pequeno Príncipe', 29.90, 10),
('Dom Casmurro', 35.00, 5),
('1984', 42.50, 8);

-- Criação da tabela de pedidos
CREATE TABLE pedidos (
    id INT PRIMARY KEY AUTO_INCREMENT,
    id_produto INT NOT NULL,
    quantidade INT NOT NULL,
    data_pedido DATE NOT NULL,
    FOREIGN KEY (id_produto) REFERENCES produtos(id)
);

-- Inserção de pedidos
INSERT INTO pedidos (id_produto, quantidade, data_pedido) VALUES
(1, 2, '2025-06-10'),
(2, 1, '2025-06-11'),
(3, 3, '2025-06-11');
