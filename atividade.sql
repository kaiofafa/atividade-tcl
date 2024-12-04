START TRANSACTION;

INSERT INTO cliente (id_cliente, nome) 
VALUES (1, 'João Silva');

SAVEPOINT cliente_inserted;

INSERT INTO pedido (id_pedido, id_cliente, data_pedido) 
VALUES (101, 1, NOW());

INSERT INTO pedido (id_pedido, id_cliente, data_pedido) 
VALUES (102, 999, NOW());  
COMMIT;  

ROLLBACK TO SAVEPOINT cliente_inserted;
