CREATE TABLE ESPECIALIDADES_FUNCIONARIO (
  id_ESPECIALIDADES INTEGER  NOT NULL   IDENTITY ,
  NOME VARCHAR(20)    ,
  DATA_CRIACAO DATE    ,
  DATA_ATUALIZACAO DATE    ,
  USUARIO_ATUALIZACAO VARCHAR(25)      ,
PRIMARY KEY(id_ESPECIALIDADES));
GO




CREATE TABLE PORTE_ANIMAL (
  id_PORTE_ANIMAL INTEGER  NOT NULL   IDENTITY ,
  TAMANHO VARCHAR(20)    ,
  DATA_CRIACAO DATE    ,
  DATA_ATUALIZACAO DATE    ,
  USUARIO_ATUALIZACAO VARCHAR(25)      ,
PRIMARY KEY(id_PORTE_ANIMAL));
GO




CREATE TABLE ITEM_COMPRA (
  id_ITEM_COMPRA INTEGER  NOT NULL   IDENTITY ,
  QUANTIDADE INTEGER    ,
  VALOR NUMERIC(7,2)    ,
  DATA_CRIACAO DATE    ,
  DATA_ATUALIZACAO DATE    ,
  USUARIO_ATUALIZACAO VARCHAR(25)      ,
PRIMARY KEY(id_ITEM_COMPRA));
GO




CREATE TABLE DOENCAS_ALERGIAS (
  id_DOENCA_ALERGIAS INTEGER  NOT NULL   IDENTITY ,
  NOME_CIENTIFICO VARCHAR(20)    ,
  NOME_USUAL VARCHAR(20)    ,
  OBSERVACAO VARCHAR(80)    ,
  TRATAMENTO_CONVECIONAL VARCHAR(255)    ,
  CAUSADOR VARCHAR(80)    ,
  TRANSMISSAO VARCHAR(80)    ,
  DATA_CRIACAO DATE    ,
  DATA_ATUALIZACAO DATE    ,
  USUARIO_ATUALIZACAO VARCHAR(25)      ,
PRIMARY KEY(id_DOENCA_ALERGIAS));
GO




CREATE TABLE GENERO (
  id_GENERO INTEGER  NOT NULL   IDENTITY ,
  NOME VARCHAR(1)    ,
  DATA_CRIACAO DATETIME    ,
  DATA_ATUALIZACAO DATETIME    ,
  USUARIO_ATUALIZACAO VARCHAR(25)      ,
PRIMARY KEY(id_GENERO));
GO




CREATE TABLE TIPO_MOEDA (
  id_TIPO_MOEDA INTEGER  NOT NULL   IDENTITY ,
  TIPO_MOEDA VARCHAR(20)    ,
  DATA_CRIACAO DATE    ,
  DATA_ATUALIZACAO DATE    ,
  USUARIO_ATUALIZACAO VARCHAR(25)      ,
PRIMARY KEY(id_TIPO_MOEDA));
GO




CREATE TABLE TIPO_PRODUTO (
  idTIPO_PRODUTO INTEGER  NOT NULL   IDENTITY ,
  TIPO_PRODUTO VARCHAR(50)    ,
  DATA_CRIACAO DATE    ,
  DATA_ATUALIZACAO DATE    ,
  USUARIO_ATUALIZACAO VARCHAR(25)      ,
PRIMARY KEY(idTIPO_PRODUTO));
GO




CREATE TABLE TIPO_ANIMAL (
  id_TIPO_ANIMAL INTEGER  NOT NULL   IDENTITY ,
  NOME VARCHAR(20)    ,
  DATA_CRIACAO DATE    ,
  DATA_ATUALIZACAO DATE    ,
  USUARIO_ATUALIZACAO VARCHAR(25)      ,
PRIMARY KEY(id_TIPO_ANIMAL));
GO




CREATE TABLE ESTADO (
  id_ESTADO INTEGER  NOT NULL   IDENTITY ,
  NOME VARCHAR(50)    ,
  SIGLA CHAR(2)    ,
  DATA_CRIACAO DATE    ,
  DATA_ATUALIZACAO DATE    ,
  USUARIO_ATUALIZACAO VARCHAR(25)      ,
PRIMARY KEY(id_ESTADO));
GO




CREATE TABLE ESTADO_CIVIL (
  id_ESTADO_CIVIL INTEGER  NOT NULL   IDENTITY ,
  NOME VARCHAR(20)    ,
  DATA_CRIACAO DATE    ,
  DATA_ATUALIZACAO DATE    ,
  USUARIO_ATUALIZACAO VARCHAR(25)      ,
PRIMARY KEY(id_ESTADO_CIVIL));
GO




CREATE TABLE RACA_ANIMAL (
  id_RACA_ANIMAL INTEGER  NOT NULL   IDENTITY ,
  TIPO_ANIMAL_id_TIPO_ANIMAL INTEGER  NOT NULL  ,
  NOME VARCHAR(20)    ,
  DATA_CRIACAO DATE    ,
  DATA_ATUALIZACAO DATE    ,
  USUARIO_ATUALIZACAO VARCHAR(25)      ,
PRIMARY KEY(id_RACA_ANIMAL)  ,
  FOREIGN KEY(TIPO_ANIMAL_id_TIPO_ANIMAL)
    REFERENCES TIPO_ANIMAL(id_TIPO_ANIMAL));
GO


CREATE INDEX RACA_ANIMAL_FKIndex1 ON RACA_ANIMAL (TIPO_ANIMAL_id_TIPO_ANIMAL);
GO


CREATE INDEX IFK_Rel_32 ON RACA_ANIMAL (TIPO_ANIMAL_id_TIPO_ANIMAL);
GO


CREATE TABLE CIDADE (
  id_CIDADE INTEGER  NOT NULL   IDENTITY ,
  ESTADO_id_ESTADO INTEGER  NOT NULL  ,
  NOME VARCHAR(120)    ,
  DATA_CRIACAO DATE    ,
  DATA_ATUALIZACAO DATE    ,
  USUARIO_ATUALIZACAO VARCHAR(25)      ,
PRIMARY KEY(id_CIDADE)  ,
  FOREIGN KEY(ESTADO_id_ESTADO)
    REFERENCES ESTADO(id_ESTADO));
GO


CREATE INDEX CIDADE_FKIndex1 ON CIDADE (ESTADO_id_ESTADO);
GO


CREATE INDEX IFK_Rel_43 ON CIDADE (ESTADO_id_ESTADO);
GO


CREATE TABLE CAIXA (
  id_CAIXA INTEGER  NOT NULL   IDENTITY ,
  TIPO_MOEDA_id_TIPO_MOEDA INTEGER  NOT NULL  ,
  DATA_CAIXA DATE    ,
  HORA TIME    ,
  DEBITO NUMERIC(7,2)    ,
  CREDITO NUMERIC(7,2)    ,
  DESCRICAO VARCHAR(120)    ,
  DATA_CRIACAO DATE    ,
  DATA_ATUALIZACAO DATE    ,
  USUARIO_ATAULIZACAO VARCHAR(25)      ,
PRIMARY KEY(id_CAIXA)  ,
  FOREIGN KEY(TIPO_MOEDA_id_TIPO_MOEDA)
    REFERENCES TIPO_MOEDA(id_TIPO_MOEDA));
GO


CREATE INDEX CAIXA_FKIndex1 ON CAIXA (TIPO_MOEDA_id_TIPO_MOEDA);
GO


CREATE INDEX IFK_Rel_38 ON CAIXA (TIPO_MOEDA_id_TIPO_MOEDA);
GO


CREATE TABLE COMPRA (
  id_COMPRA INTEGER  NOT NULL   IDENTITY ,
  TIPO_MOEDA_id_TIPO_MOEDA INTEGER  NOT NULL  ,
  ITEM_COMPRA_id_ITEM_COMPRA INTEGER  NOT NULL  ,
  DATA_COMPRA DATETIME    ,
  FORMA_PAGAMENTO CHAR(6)    ,
  NUMERO_PARCELAS INTEGER    ,
  DATA_CRIACAO DATE    ,
  DATA_ATUALIZACAO DATE    ,
  USUARIO_ATUALIZACAO VARCHAR(25)      ,
PRIMARY KEY(id_COMPRA)    ,
  FOREIGN KEY(ITEM_COMPRA_id_ITEM_COMPRA)
    REFERENCES ITEM_COMPRA(id_ITEM_COMPRA),
  FOREIGN KEY(TIPO_MOEDA_id_TIPO_MOEDA)
    REFERENCES TIPO_MOEDA(id_TIPO_MOEDA));
GO


CREATE INDEX COMPRA_FKIndex1 ON COMPRA (ITEM_COMPRA_id_ITEM_COMPRA);
GO
CREATE INDEX COMPRA_FKIndex2 ON COMPRA (TIPO_MOEDA_id_TIPO_MOEDA);
GO


CREATE INDEX IFK_Rel_43 ON COMPRA (ITEM_COMPRA_id_ITEM_COMPRA);
GO
CREATE INDEX IFK_Rel_44 ON COMPRA (TIPO_MOEDA_id_TIPO_MOEDA);
GO


CREATE TABLE CLIENTE (
  id_CLIENTE INTEGER  NOT NULL   IDENTITY ,
  CIDADE_id_CIDADE INTEGER  NOT NULL  ,
  GENERO_id_GENERO INTEGER  NOT NULL  ,
  ESTADO_CIVIL_id_ESTADO_CIVIL INTEGER  NOT NULL  ,
  NOME VARCHAR(50)    ,
  CPF VARCHAR(12)    ,
  RG VARCHAR(12)    ,
  EMDERECO VARCHAR(80)    ,
  COMPELEMENTO VARCHAR(80)    ,
  NUMERO VARCHAR(5)    ,
  BAIRRO VARCHAR(50)    ,
  CEP VARCHAR(8)    ,
  TELEFONE VARCHAR(12)    ,
  CELULAR VARCHAR(12)    ,
  EMAIL VARCHAR(120)    ,
  DATA_CADASTRO DATE    ,
  USUARIO VARCHAR(15)    ,
  SENHA VARCHAR(15)    ,
  DATA_CRIACAO DATE    ,
  DAT_ATUALIZACAO DATE    ,
  USUARIO_ATUALIZACAO VARCHAR(25)      ,
PRIMARY KEY(id_CLIENTE)      ,
  FOREIGN KEY(ESTADO_CIVIL_id_ESTADO_CIVIL)
    REFERENCES ESTADO_CIVIL(id_ESTADO_CIVIL),
  FOREIGN KEY(GENERO_id_GENERO)
    REFERENCES GENERO(id_GENERO),
  FOREIGN KEY(CIDADE_id_CIDADE)
    REFERENCES CIDADE(id_CIDADE));
GO


CREATE INDEX CLIENTE_FKIndex2 ON CLIENTE (ESTADO_CIVIL_id_ESTADO_CIVIL);
GO
CREATE INDEX CLIENTE_FKIndex3 ON CLIENTE (GENERO_id_GENERO);
GO
CREATE INDEX CLIENTE_FKIndex3 ON CLIENTE (CIDADE_id_CIDADE);
GO


CREATE INDEX IFK_Rel_06 ON CLIENTE (ESTADO_CIVIL_id_ESTADO_CIVIL);
GO
CREATE INDEX IFK_Rel_12 ON CLIENTE (GENERO_id_GENERO);
GO
CREATE INDEX IFK_Rel_33 ON CLIENTE (CIDADE_id_CIDADE);
GO


CREATE TABLE ANIMAL (
  id_ANIMAL INTEGER  NOT NULL   IDENTITY ,
  CLIENTE_id_CLIENTE INTEGER  NOT NULL  ,
  RACA_ANIMAL_id_RACA_ANIMAL INTEGER  NOT NULL  ,
  GENERO_id_GENERO INTEGER  NOT NULL  ,
  PORTE_ANIMAL_id_PORTE_ANIMAL INTEGER  NOT NULL  ,
  DATA_NASCIMENTO DATE    ,
  PESO NUMERIC(5,3)    ,
  STATUS_ANIMAL CHAR(1)    ,
  STATUS_ANIMAL_HOSPEDAGEM CHAR(1)    ,
  DATA_CRIACAO DATE    ,
  DATA_ATUALIZACAO DATE    ,
  USUARIO_ATUALIZACAO VARCHAR(25)      ,
PRIMARY KEY(id_ANIMAL)        ,
  FOREIGN KEY(PORTE_ANIMAL_id_PORTE_ANIMAL)
    REFERENCES PORTE_ANIMAL(id_PORTE_ANIMAL),
  FOREIGN KEY(GENERO_id_GENERO)
    REFERENCES GENERO(id_GENERO),
  FOREIGN KEY(RACA_ANIMAL_id_RACA_ANIMAL)
    REFERENCES RACA_ANIMAL(id_RACA_ANIMAL),
  FOREIGN KEY(CLIENTE_id_CLIENTE)
    REFERENCES CLIENTE(id_CLIENTE));
GO


CREATE INDEX ANIMAL_FKIndex1 ON ANIMAL (PORTE_ANIMAL_id_PORTE_ANIMAL);
GO
CREATE INDEX ANIMAL_FKIndex3 ON ANIMAL (GENERO_id_GENERO);
GO
CREATE INDEX ANIMAL_FKIndex3 ON ANIMAL (RACA_ANIMAL_id_RACA_ANIMAL);
GO
CREATE INDEX ANIMAL_FKIndex4 ON ANIMAL (CLIENTE_id_CLIENTE);
GO


CREATE INDEX IFK_Rel_01 ON ANIMAL (PORTE_ANIMAL_id_PORTE_ANIMAL);
GO
CREATE INDEX IFK_Rel_04 ON ANIMAL (GENERO_id_GENERO);
GO
CREATE INDEX IFK_Rel_33 ON ANIMAL (RACA_ANIMAL_id_RACA_ANIMAL);
GO
CREATE INDEX IFK_Rel_34 ON ANIMAL (CLIENTE_id_CLIENTE);
GO


CREATE TABLE FUNCIONARIOS (
  id_FUNCIONARIOS INTEGER  NOT NULL  ,
  CIDADE_id_CIDADE INTEGER  NOT NULL  ,
  GENERO_id_GENERO INTEGER  NOT NULL  ,
  ESPECIALIDADES_FUNCIONARIO_id_ESPECIALIDADES INTEGER  NOT NULL  ,
  ESTADO_CIVIL_id_ESTADO_CIVIL INTEGER  NOT NULL  ,
  NOME VARCHAR(50)    ,
  CPF VARCHAR(12)    ,
  RG VARCHAR(12)    ,
  ENDERECO VARCHAR(80)    ,
  COMPLEMENTO VARCHAR(80)    ,
  NUMERO VARCHAR(5)    ,
  BAIRRO VARCHAR(50)    ,
  CEP VARCHAR(8)    ,
  TELEFONE VARCHAR(12)    ,
  CELULAR VARCHAR(12)    ,
  SALARIO NUMERIC(7,2)    ,
  DATA_ADMISSAO DATE    ,
  DATA_DEMISSAO DATE    ,
  EMAIL VARCHAR(80)    ,
  USUARIO VARCHAR(15)    ,
  SENHA VARCHAR(15)    ,
  DATA_CRIACAO DATE    ,
  DATA_ATUALIZACAO DATE    ,
  USUARIO_ATUALIZACAO VARCHAR(25)      ,
PRIMARY KEY(id_FUNCIONARIOS)        ,
  FOREIGN KEY(ESTADO_CIVIL_id_ESTADO_CIVIL)
    REFERENCES ESTADO_CIVIL(id_ESTADO_CIVIL),
  FOREIGN KEY(ESPECIALIDADES_FUNCIONARIO_id_ESPECIALIDADES)
    REFERENCES ESPECIALIDADES_FUNCIONARIO(id_ESPECIALIDADES),
  FOREIGN KEY(GENERO_id_GENERO)
    REFERENCES GENERO(id_GENERO),
  FOREIGN KEY(CIDADE_id_CIDADE)
    REFERENCES CIDADE(id_CIDADE));
GO


CREATE INDEX FUNCIONARIOS_FKIndex1 ON FUNCIONARIOS (ESTADO_CIVIL_id_ESTADO_CIVIL);
GO
CREATE INDEX FUNCIONARIOS_FKIndex2 ON FUNCIONARIOS (ESPECIALIDADES_FUNCIONARIO_id_ESPECIALIDADES);
GO
CREATE INDEX FUNCIONARIOS_FKIndex3 ON FUNCIONARIOS (GENERO_id_GENERO);
GO
CREATE INDEX FUNCIONARIOS_FKIndex4 ON FUNCIONARIOS (CIDADE_id_CIDADE);
GO


CREATE INDEX IFK_Rel_07 ON FUNCIONARIOS (ESTADO_CIVIL_id_ESTADO_CIVIL);
GO
CREATE INDEX IFK_Rel_08 ON FUNCIONARIOS (ESPECIALIDADES_FUNCIONARIO_id_ESPECIALIDADES);
GO
CREATE INDEX IFK_Rel_10 ON FUNCIONARIOS (GENERO_id_GENERO);
GO
CREATE INDEX IFK_Rel_32 ON FUNCIONARIOS (CIDADE_id_CIDADE);
GO


CREATE TABLE HOSPEDAGEM_ANIMAL (
  id_HOSPEDAGEM_ANIMAL INTEGER  NOT NULL   IDENTITY ,
  ANIMAL_id_ANIMAL INTEGER  NOT NULL  ,
  DATA_ENTRADA DATE    ,
  DATA_SAIDA DATE    ,
  VALOR NUMERIC(7,2)    ,
  FORMA_PAGAMENTO CHAR(6)    ,
  NUMERO_PAGAMENTO INTEGER    ,
  DATA_CRIACAO DATE    ,
  DATA_ATUALIZACAO DATE    ,
  USUARIO_ATAULIZACAO VARCHAR(25)      ,
PRIMARY KEY(id_HOSPEDAGEM_ANIMAL)  ,
  FOREIGN KEY(ANIMAL_id_ANIMAL)
    REFERENCES ANIMAL(id_ANIMAL));
GO


CREATE INDEX HOSPEDAGEM_ANIMAL_FKIndex1 ON HOSPEDAGEM_ANIMAL (ANIMAL_id_ANIMAL);
GO


CREATE INDEX IFK_Rel_43 ON HOSPEDAGEM_ANIMAL (ANIMAL_id_ANIMAL);
GO


CREATE TABLE NOTICIA (
  id_NOTICIA_PROMOCAO INTEGER  NOT NULL   IDENTITY ,
  FUNCIONARIOS_id_FUNCIONARIOS INTEGER  NOT NULL  ,
  TITULO TEXT    ,
  SUBTITULO TEXT    ,
  NOTICIA TEXT    ,
  IMAGEM VARCHAR    ,
  DATA_CADASTRO DATE    ,
  DATA_MODIFICADO DATE    ,
  USUARIO_ATUALIZACAO VARCHAR(25)      ,
PRIMARY KEY(id_NOTICIA_PROMOCAO)  ,
  FOREIGN KEY(FUNCIONARIOS_id_FUNCIONARIOS)
    REFERENCES FUNCIONARIOS(id_FUNCIONARIOS));
GO


CREATE INDEX NOTICIA_PROMOCAO_FKIndex1 ON NOTICIA (FUNCIONARIOS_id_FUNCIONARIOS);
GO


CREATE INDEX IFK_Rel_31 ON NOTICIA (FUNCIONARIOS_id_FUNCIONARIOS);
GO


CREATE TABLE FORNECEDORES (
  id_FORNECEDORES INTEGER  NOT NULL  ,
  CIDADE_id_CIDADE INTEGER  NOT NULL  ,
  RAZAO_SOCIAL VARCHAR(50)    ,
  ENDERECO VARCHAR(80)    ,
  COMPLEMENTO VARCHAR(80)    ,
  NUMERO VARCHAR(5)    ,
  BAIRRO VARCHAR(50)    ,
  CEP VARCHAR(8)    ,
  TELEFONE VARCHAR(12)    ,
  CELULAR VARCHAR(12)    ,
  DATA_CADASTRO DATE    ,
  CNPJ VARCHAR(20)    ,
  IE VARCHAR(20)    ,
  DATA_CRIACAO DATE    ,
  DATA_ATUALIZACAO DATE    ,
  USUARIO_ATUALIZACAO VARCHAR(25)      ,
PRIMARY KEY(id_FORNECEDORES)  ,
  FOREIGN KEY(CIDADE_id_CIDADE)
    REFERENCES CIDADE(id_CIDADE));
GO


CREATE INDEX FORNECEDORES_FKIndex1 ON FORNECEDORES (CIDADE_id_CIDADE);
GO


CREATE INDEX IFK_Rel_34 ON FORNECEDORES (CIDADE_id_CIDADE);
GO


CREATE TABLE COMENTARIO (
  id_COMENTARIO INTEGER  NOT NULL   IDENTITY ,
  NOTICIA_id_NOTICIA_PROMOCAO INTEGER  NOT NULL  ,
  TITULO VARCHAR(250)    ,
  MENSAGEM VARCHAR(500)    ,
  DATA_2 DATETIME    ,
  AUTOR VARCHAR(100)    ,
  URL VARCHAR(250)    ,
  DATA_CRIACAO DATE    ,
  DATA_ATUALIZACAO DATE    ,
  USUARIO_ATUALIZACAO VARCHAR(25)      ,
PRIMARY KEY(id_COMENTARIO)  ,
  FOREIGN KEY(NOTICIA_id_NOTICIA_PROMOCAO)
    REFERENCES NOTICIA(id_NOTICIA_PROMOCAO));
GO


CREATE INDEX COMENTARIO_FKIndex1 ON COMENTARIO (NOTICIA_id_NOTICIA_PROMOCAO);
GO


CREATE INDEX IFK_Rel_14 ON COMENTARIO (NOTICIA_id_NOTICIA_PROMOCAO);
GO


CREATE TABLE PRODUTOS (
  id_PRODUTOS INTEGER  NOT NULL  ,
  TIPO_PRODUTO_idTIPO_PRODUTO INTEGER  NOT NULL  ,
  FUNCIONARIOS_id_FUNCIONARIOS INTEGER  NOT NULL  ,
  NOME VARCHAR(100)    ,
  OBSERVACAO VARCHAR(80)    ,
  QUANTIDADE INTEGER    ,
  DATA_CADASTRO DATE    ,
  DATA_MODIFICADO DATE    ,
  PRECO_COMPRA NUMERIC    ,
  PRECO_VENDA NUMERIC    ,
  REMEDIOS CHAR(1)    ,
  VITRINE CHAR(1)    ,
  DATA_CRIACAO DATE    ,
  DATA_ATUALIZACAO DATE    ,
  USUARIO_ATUALIZACAO VARCHAR(25)      ,
PRIMARY KEY(id_PRODUTOS)    ,
  FOREIGN KEY(FUNCIONARIOS_id_FUNCIONARIOS)
    REFERENCES FUNCIONARIOS(id_FUNCIONARIOS),
  FOREIGN KEY(TIPO_PRODUTO_idTIPO_PRODUTO)
    REFERENCES TIPO_PRODUTO(idTIPO_PRODUTO));
GO


CREATE INDEX PRODUTOS_FKIndex2 ON PRODUTOS (FUNCIONARIOS_id_FUNCIONARIOS);
GO
CREATE INDEX PRODUTOS_FKIndex2 ON PRODUTOS (TIPO_PRODUTO_idTIPO_PRODUTO);
GO


CREATE INDEX IFK_Rel_28 ON PRODUTOS (FUNCIONARIOS_id_FUNCIONARIOS);
GO
CREATE INDEX IFK_Rel_35 ON PRODUTOS (TIPO_PRODUTO_idTIPO_PRODUTO);
GO


CREATE TABLE PRODUTO_FORNECEDOR (
  PRODUTOS_id_PRODUTOS INTEGER  NOT NULL  ,
  FORNECEDORES_id_FORNECEDORES INTEGER  NOT NULL  ,
  DATA_CRIACAO DATE    ,
  DATA_ATUALIZACAO DATE    ,
  USUARIO_ATUALIZACAO VARCHAR(25)      ,
PRIMARY KEY(PRODUTOS_id_PRODUTOS, FORNECEDORES_id_FORNECEDORES)    ,
  FOREIGN KEY(PRODUTOS_id_PRODUTOS)
    REFERENCES PRODUTOS(id_PRODUTOS),
  FOREIGN KEY(FORNECEDORES_id_FORNECEDORES)
    REFERENCES FORNECEDORES(id_FORNECEDORES));
GO


CREATE INDEX PRODUTO_FORNECEDOR_FKIndex1 ON PRODUTO_FORNECEDOR (PRODUTOS_id_PRODUTOS);
GO
CREATE INDEX PRODUTO_FORNECEDOR_FKIndex2 ON PRODUTO_FORNECEDOR (FORNECEDORES_id_FORNECEDORES);
GO


CREATE INDEX IFK_Rel_37 ON PRODUTO_FORNECEDOR (PRODUTOS_id_PRODUTOS);
GO
CREATE INDEX IFK_Rel_38 ON PRODUTO_FORNECEDOR (FORNECEDORES_id_FORNECEDORES);
GO


CREATE TABLE DOENCA_ANIMAL (
  ANIMAL_id_ANIMAL INTEGER  NOT NULL  ,
  DOENCAS_ALERGIAS_id_DOENCA_ALERGIAS INTEGER  NOT NULL  ,
   DATA_DETECCAO DATE    ,
  DATA_CURA DATE    ,
  TRATAMENTO CHAR(1)    ,
  OBSERVACAO TEXT    ,
  DATA_CRIACAO DATE    ,
  DATA_ATUALIZACAO DATE    ,
  USUARIO_ATUALIZACAO VARCHAR(25)      ,
PRIMARY KEY(ANIMAL_id_ANIMAL, DOENCAS_ALERGIAS_id_DOENCA_ALERGIAS)    ,
  FOREIGN KEY(ANIMAL_id_ANIMAL)
    REFERENCES ANIMAL(id_ANIMAL),
  FOREIGN KEY(DOENCAS_ALERGIAS_id_DOENCA_ALERGIAS)
    REFERENCES DOENCAS_ALERGIAS(id_DOENCA_ALERGIAS));
GO


CREATE INDEX DOENCA_ANIMAL_FKIndex1 ON DOENCA_ANIMAL (ANIMAL_id_ANIMAL);
GO
CREATE INDEX DOENCA_ANIMAL_FKIndex2 ON DOENCA_ANIMAL (DOENCAS_ALERGIAS_id_DOENCA_ALERGIAS);
GO


CREATE INDEX IFK_Rel_30 ON DOENCA_ANIMAL (ANIMAL_id_ANIMAL);
GO
CREATE INDEX IFK_Rel_31 ON DOENCA_ANIMAL (DOENCAS_ALERGIAS_id_DOENCA_ALERGIAS);
GO


CREATE TABLE CONTAS_PAGAR (
  ID_CONTA_PAGAR INTEGER  NOT NULL  ,
  FORNECEDORES_id_FORNECEDORES INTEGER  NOT NULL  ,
  COMPRA_id_COMPRA INTEGER  NOT NULL  ,
  DATA_EMISSAO DATE    ,
  DATA_VENCIMENTO DATE    ,
  VALOR_PAGAR NUMERIC(7,2)    ,
  SALDO NUMERIC(7,2)    ,
  ACRESCIMO NUMERIC(7,2)    ,
  DESCONTO NUMERIC(7,2)    ,
  LIQUIDADO CHAR(1)    ,
  DESCRICAO VARCHAR(120)    ,
  DATA_CRIACAO DATE    ,
  DATA_ATUALIZACAO DATE    ,
  USUAIRO_ATUALIZACAO VARCHAR(25)      ,
PRIMARY KEY(ID_CONTA_PAGAR)    ,
  FOREIGN KEY(COMPRA_id_COMPRA)
    REFERENCES COMPRA(id_COMPRA),
  FOREIGN KEY(FORNECEDORES_id_FORNECEDORES)
    REFERENCES FORNECEDORES(id_FORNECEDORES));
GO


CREATE INDEX CONTAS_PAGAR_FKIndex1 ON CONTAS_PAGAR (COMPRA_id_COMPRA);
GO
CREATE INDEX CONTAS_PAGAR_FKIndex2 ON CONTAS_PAGAR (FORNECEDORES_id_FORNECEDORES);
GO


CREATE INDEX IFK_Rel_39 ON CONTAS_PAGAR (COMPRA_id_COMPRA);
GO
CREATE INDEX IFK_Rel_40 ON CONTAS_PAGAR (FORNECEDORES_id_FORNECEDORES);
GO


CREATE TABLE CONSULTA (
  id_CONSULTA INTEGER  NOT NULL   IDENTITY ,
  FUNCIONARIOS_id_FUNCIONARIOS INTEGER  NOT NULL  ,
  ANIMAL_id_ANIMAL INTEGER  NOT NULL  ,
  DATA_CONSULTA DATE    ,
  HORA_CONSULTA DATETIME    ,
  VALOR NUMERIC(7,2)    ,
  DIAGNOSTICO TEXT    ,
  EFETUADA CHAR(1)    ,
  DATA_CRIACAO DATE    ,
  DATA_ATUALIZACAO DATE    ,
  USUARIO_ATUALIZACAO VARCHAR(25)      ,
PRIMARY KEY(id_CONSULTA)    ,
  FOREIGN KEY(ANIMAL_id_ANIMAL)
    REFERENCES ANIMAL(id_ANIMAL),
  FOREIGN KEY(FUNCIONARIOS_id_FUNCIONARIOS)
    REFERENCES FUNCIONARIOS(id_FUNCIONARIOS));
GO


CREATE INDEX CONSULTA_FKIndex1 ON CONSULTA (ANIMAL_id_ANIMAL);
GO
CREATE INDEX CONSULTA_FKIndex2 ON CONSULTA (FUNCIONARIOS_id_FUNCIONARIOS);
GO


CREATE INDEX IFK_Rel_30 ON CONSULTA (ANIMAL_id_ANIMAL);
GO
CREATE INDEX IFK_Rel_36 ON CONSULTA (FUNCIONARIOS_id_FUNCIONARIOS);
GO


CREATE TABLE VENDA (
  id_VENDA INTEGER  NOT NULL   IDENTITY ,
  FUNCIONARIOS_id_FUNCIONARIOS INTEGER  NOT NULL  ,
  CLIENTE_id_CLIENTE INTEGER  NOT NULL  ,
  TIPO_MOEDA_id_TIPO_MOEDA INTEGER  NOT NULL  ,
  DATA_VENDA DATETIME    ,
  FORMA_PAGAMENTO CHAR(6)    ,
  NUMERO_PARCELAS INTEGER    ,
  DATA_CRIACAO DATE    ,
  DATA_ATUALIZACAO DATE    ,
  USUARIO_ATUALIZACAO VARCHAR(25)      ,
PRIMARY KEY(id_VENDA)      ,
  FOREIGN KEY(TIPO_MOEDA_id_TIPO_MOEDA)
    REFERENCES TIPO_MOEDA(id_TIPO_MOEDA),
  FOREIGN KEY(CLIENTE_id_CLIENTE)
    REFERENCES CLIENTE(id_CLIENTE),
  FOREIGN KEY(FUNCIONARIOS_id_FUNCIONARIOS)
    REFERENCES FUNCIONARIOS(id_FUNCIONARIOS));
GO


CREATE INDEX VENDA_FKIndex1 ON VENDA (TIPO_MOEDA_id_TIPO_MOEDA);
GO
CREATE INDEX VENDA_FKIndex2 ON VENDA (CLIENTE_id_CLIENTE);
GO
CREATE INDEX VENDA_FKIndex3 ON VENDA (FUNCIONARIOS_id_FUNCIONARIOS);
GO


CREATE INDEX IFK_Rel_18 ON VENDA (TIPO_MOEDA_id_TIPO_MOEDA);
GO
CREATE INDEX IFK_Rel_22 ON VENDA (CLIENTE_id_CLIENTE);
GO
CREATE INDEX IFK_Rel_32 ON VENDA (FUNCIONARIOS_id_FUNCIONARIOS);
GO


CREATE TABLE CONTAS_RECEBER (
  idCONTAS_RECEBER INTEGER  NOT NULL   IDENTITY ,
  CONSULTA_id_CONSULTA INTEGER    ,
  CLIENTE_id_CLIENTE INTEGER  NOT NULL  ,
  VENDA_id_VENDA INTEGER    ,
  DATA_EMISSAO DATE    ,
  DATA_VENCIMENTO DATE    ,
  VALOR_RECEBER NUMERIC(7,2)    ,
  SALDO NUMERIC(7,2)    ,
  ACRESCIMO NUMERIC(7,2)    ,
  DESCONTO NUMERIC(7,2)    ,
  LIQUIDADO CHAR(3)    ,
  DESCRICAO VARCHAR(120)      ,
PRIMARY KEY(idCONTAS_RECEBER)      ,
  FOREIGN KEY(VENDA_id_VENDA)
    REFERENCES VENDA(id_VENDA),
  FOREIGN KEY(CLIENTE_id_CLIENTE)
    REFERENCES CLIENTE(id_CLIENTE),
  FOREIGN KEY(CONSULTA_id_CONSULTA)
    REFERENCES CONSULTA(id_CONSULTA));
GO


CREATE INDEX CONTAS_RECEBER_FKIndex1 ON CONTAS_RECEBER (VENDA_id_VENDA);
GO
CREATE INDEX CONTAS_RECEBER_FKIndex2 ON CONTAS_RECEBER (CLIENTE_id_CLIENTE);
GO
CREATE INDEX CONTAS_RECEBER_FKIndex3 ON CONTAS_RECEBER (CONSULTA_id_CONSULTA);
GO


CREATE INDEX IFK_Rel_35 ON CONTAS_RECEBER (VENDA_id_VENDA);
GO
CREATE INDEX IFK_Rel_36 ON CONTAS_RECEBER (CLIENTE_id_CLIENTE);
GO
CREATE INDEX IFK_Rel_37 ON CONTAS_RECEBER (CONSULTA_id_CONSULTA);
GO


CREATE TABLE RECEBIMENTO (
  id_RECEBIMENTO INTEGER  NOT NULL   IDENTITY ,
  CONTAS_RECEBER_idCONTAS_RECEBER INTEGER  NOT NULL  ,
  VALOR NUMERIC(7,2)    ,
  DATA_RECEBIMENTO DATETIME    ,
  DATA_CRIACAO DATE    ,
  DATA_ATUALIZACAO DATE    ,
  USUARIO_ATUALIZACAO VARCHAR(25)      ,
PRIMARY KEY(id_RECEBIMENTO)  ,
  FOREIGN KEY(CONTAS_RECEBER_idCONTAS_RECEBER)
    REFERENCES CONTAS_RECEBER(idCONTAS_RECEBER));
GO


CREATE INDEX RECEBIMENTO_FKIndex1 ON RECEBIMENTO (CONTAS_RECEBER_idCONTAS_RECEBER);
GO


CREATE INDEX IFK_Rel_42 ON RECEBIMENTO (CONTAS_RECEBER_idCONTAS_RECEBER);
GO


CREATE TABLE VALOR_CONSULTA (
  CONSULTA_id_CONSULTA INTEGER  NOT NULL  ,
  PRODUTOS_id_PRODUTOS INTEGER  NOT NULL  ,
  QUANTIDADE INTEGER    ,
  VALOR NUMERIC(5,2)    ,
  DATA_CRIACAO DATE    ,
  DATA_ATUALIZACAO DATE    ,
  USUARIO_ATUALIZACAO VARCHAR(25)      ,
PRIMARY KEY(CONSULTA_id_CONSULTA, PRODUTOS_id_PRODUTOS)    ,
  FOREIGN KEY(CONSULTA_id_CONSULTA)
    REFERENCES CONSULTA(id_CONSULTA),
  FOREIGN KEY(PRODUTOS_id_PRODUTOS)
    REFERENCES PRODUTOS(id_PRODUTOS));
GO


CREATE INDEX VALOR_CONSULTA_FKIndex1 ON VALOR_CONSULTA (CONSULTA_id_CONSULTA);
GO
CREATE INDEX VALOR_CONSULTA_FKIndex2 ON VALOR_CONSULTA (PRODUTOS_id_PRODUTOS);
GO


CREATE INDEX IFK_Rel_26 ON VALOR_CONSULTA (CONSULTA_id_CONSULTA);
GO
CREATE INDEX IFK_Rel_27 ON VALOR_CONSULTA (PRODUTOS_id_PRODUTOS);
GO


CREATE TABLE ITEM_VENDA (
  VENDA_id_VENDA INTEGER  NOT NULL  ,
  PRODUTOS_id_PRODUTOS INTEGER  NOT NULL  ,
  QUANTIDADE INTEGER    ,
  VALOR NUMERIC(5,2)    ,
  DATA_CRIACAO DATE    ,
  DATA_ATUALIZACAO DATE    ,
  USUARIO_ATUALIZACAO VARCHAR(25)      ,
PRIMARY KEY(VENDA_id_VENDA, PRODUTOS_id_PRODUTOS)    ,
  FOREIGN KEY(VENDA_id_VENDA)
    REFERENCES VENDA(id_VENDA),
  FOREIGN KEY(PRODUTOS_id_PRODUTOS)
    REFERENCES PRODUTOS(id_PRODUTOS));
GO


CREATE INDEX ITEM_VENDA_FKIndex1 ON ITEM_VENDA (VENDA_id_VENDA);
GO
CREATE INDEX ITEM_VENDA_FKIndex2 ON ITEM_VENDA (PRODUTOS_id_PRODUTOS);
GO


CREATE INDEX IFK_Rel_28 ON ITEM_VENDA (VENDA_id_VENDA);
GO
CREATE INDEX IFK_Rel_29 ON ITEM_VENDA (PRODUTOS_id_PRODUTOS);
GO



