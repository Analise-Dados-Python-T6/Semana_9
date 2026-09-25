CREATE TABLE "clientes"(
    "id_cliente" INTEGER NOT NULL,
    "nome" VARCHAR(255) NOT NULL,
    "email" VARCHAR(255) NOT NULL,
    "telefone" VARCHAR(255) NOT NULL,
    "cidade" VARCHAR(255) NOT NULL
);
ALTER TABLE
    "clientes" ADD PRIMARY KEY("id_cliente");
CREATE TABLE "lojas"(
    "id_loja" INTEGER NOT NULL,
    "nome_loja" VARCHAR(255) NOT NULL,
    "cidade" VARCHAR(255) NOT NULL
);
ALTER TABLE
    "lojas" ADD PRIMARY KEY("id_loja");
CREATE TABLE "pedidos"(
    "id_pedido" INTEGER NOT NULL,
    "id_cliente" INTEGER NOT NULL,
    "id_loja" INTEGER NOT NULL,
    "data_pedido" DATE NOT NULL
);
ALTER TABLE
    "pedidos" ADD PRIMARY KEY("id_pedido");
CREATE TABLE "pedido_item"(
    "id_pedido" INTEGER NOT NULL,
    "id_produto" INTEGER NOT NULL,
    "quantidade" INTEGER NOT NULL
);
CREATE TABLE "produtos"(
    "id_produto" INTEGER NOT NULL,
    "nome_produto" VARCHAR(255) NOT NULL,
    "categoria" VARCHAR(255) NOT NULL,
    "tamanho" VARCHAR(255) NOT NULL,
    "cor" VARCHAR(255) NOT NULL,
    "preco" DECIMAL(8, 2) NOT NULL
);
ALTER TABLE
    "produtos" ADD PRIMARY KEY("id_produto");
ALTER TABLE
    "pedido_item" ADD CONSTRAINT "pedido_item_id_pedido_foreign" FOREIGN KEY("id_pedido") REFERENCES "pedidos"("id_pedido");
ALTER TABLE
    "pedidos" ADD CONSTRAINT "pedidos_id_cliente_foreign" FOREIGN KEY("id_cliente") REFERENCES "clientes"("id_cliente");
ALTER TABLE
    "pedido_item" ADD CONSTRAINT "pedido_item_id_produto_foreign" FOREIGN KEY("id_produto") REFERENCES "produtos"("id_produto");
ALTER TABLE
    "pedidos" ADD CONSTRAINT "pedidos_id_loja_foreign" FOREIGN KEY("id_loja") REFERENCES "lojas"("id_loja");