  
- Script MySQL gerado pelo MySQL Workbench
- 28/03/19 11:24:31
- Modelo: Nova Versão do Modelo: 1.0
- Engenharia avançada do MySQL Workbench
SET @OLD_UNIQUE_CHECKS = @@ UNIQUE_CHECKS, UNIQUE_CHECKS = 0 ;
SET @OLD_FOREIGN_KEY_CHECKS = @@ FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS = 0 ;
SET @OLD_SQL_MODE = @@ SQL_MODE, SQL_MODE = ' TRADICIONAL, ALLOW_INVALID_DATES ' ;
- ------------------------------------------------ -----
- Esquema mydb
- ------------------------------------------------ -----
- ------------------------------------------------ -----
- Esquema mydb
- ------------------------------------------------ -----
CRIAR  SCHEMA  SE NÃO EXISTE ` mydb ` default Caráter SET utf8;
USO ` mydb ' ;
- ------------------------------------------------ -----
- Tabela `mydb`.`Escola`
- ------------------------------------------------ -----
CRIAR  TABELA  SE NÃO EXISTE ` mydb ` . ` Escola ` (
` IdEscola `  INT  NOT NULL ,
` Nomo `  VARCHAR ( 45 ) NULL ,
CHAVE PRIMÁRIA ( ` idEscola ` ))
ENGINE = InnoDB;
- ------------------------------------------------ -----
- Tabela `mydb`.`Predio`
- ------------------------------------------------ -----
CRIAR  TABELA  SE NÃO EXISTE ` mydb ` . ` Predio ` (
` IdPredio `  INT  NOT NULL ,
` Descricao `  VARCHAR ( 45 ) NULL ,
` Logadouro `  VARCHAR ( 45 ) NULL ,
` Escola_idEscola `  INT  NOT NULL ,
PRIMÁRIA CHAVE ( ` idPredio ` ),
ÍNDICE ` fk_Predio_Escola_idx ` ( ` Escola_idEscola `  ASC ),
RESTRIÇÃO  ` fk_Predio_Escola ` 
EXTERNA CHAVE ( ` Escola_idEscola ` )
Referências  ` meubd ` . ` Escola ` ( ` idEscola ` )
AO EXCLUIR, NENHUMA AÇÃO
NA  ATUALIZAÇÃO, NENHUMA AÇÃO)
ENGINE = InnoDB;
- ------------------------------------------------ -----
- Tabela `mydb`.`Bloco`
- ------------------------------------------------ -----
CRIAR  TABELA  SE NÃO EXISTE ` mydb ` . ` Bloco ` (
` Idbloco `  INT  NOT NULL ,
` Descricao `  VARCHAR ( 45 ) NULL ,
` Predio_idPredio `  INT  NOT NULL ,
PRIMÁRIA CHAVE ( ` idbloco ` ),
ÍNDICE ` fk_Bloco_Predio1_idx ` ( ` Predio_idPredio `  ASC ),
RESTRIÇÃO  ` fk_Bloco_Predio1 ` 
EXTERNA CHAVE ( ` Predio_idPredio ` )
Referências  ` meubd ` . ` Predio ` ( ` idPredio ` )
AO EXCLUIR, NENHUMA AÇÃO
NA  ATUALIZAÇÃO, NENHUMA AÇÃO)
ENGINE = InnoDB;
- ------------------------------------------------ -----
- Tabela `mydb` `Andar`
- ------------------------------------------------ -----
CRIAR  TABELA  SE NÃO EXISTE ` mydb ` . ` Andar ` (
` IdAndar `  INT  NOT NULL ,
` Descricao `  VARCHAR ( 45 ) NULL ,
CHAVE PRIMÁRIA ( ` idAndar ` ))
ENGINE = InnoDB;
- ------------------------------------------------ -----
- Tabela `mydb``Local`
- ------------------------------------------------ -----
CRIAR  TABELA  SE NÃO EXISTE ` mydb ` . ` Local ` (
` IdLocal `  INT  NOT NULL ,
` Descricao `  VARCHAR ( 45 ) NULL ,
` Andar_idAndar `  INT  NOT NULL ,
` Bloco_idbloco `  INT  NOT NULL ,
PRIMÁRIA CHAVE ( ` idLocal ` ),
ÍNDICE ` fk_Local_Andar1_idx ` ( ` Andar_idAndar `  ASC ),
ÍNDICE ` fk_Local_Bloco1_idx ` ( ` Bloco_idbloco `  ASC ),
RESTRIÇÃO  ` fk_Local_Andar1 ` 
EXTERNA CHAVE ( ` Andar_idAndar ` )
Referências  ` meubd ` . ` Andar ` ( ` idAndar ` )
AO EXCLUIR, NENHUMA AÇÃO
NA  ATUALIZAÇÃO, SEM AÇÃO,
RESTRIÇÃO  ` fk_Local_Bloco1 ` 
EXTERNA CHAVE ( ` Bloco_idbloco ` )
Referências  ` meubd ` . ` Bloco ` ( ` idbloco ` )
AO EXCLUIR, NENHUMA AÇÃO
NA  ATUALIZAÇÃO, NENHUMA AÇÃO)
ENGINE = InnoDB;
- ------------------------------------------------ -----
- Tabela `mydb`.`Problema`
- ------------------------------------------------ -----
CRIAR  TABELA  SE NÃO EXISTE ` mydb ` . ` Problema ` (
` IdProblema `  INT  NOT NULL ,
` Descricao `  VARCHAR ( 45 ) NULL ,
` Andar_idAndar `  INT  NOT NULL ,
PRIMÁRIA CHAVE ( ` idProblema ` ),
ÍNDICE ` fk_Problema_Andar1_idx ` ( ` Andar_idAndar `  ASC ),
RESTRIÇÃO  ` fk_Problema_Andar1 ` 
EXTERNA CHAVE ( ` Andar_idAndar ` )
Referências  ` meubd ` . ` Andar ` ( ` idAndar ` )
AO EXCLUIR, NENHUMA AÇÃO
NA  ATUALIZAÇÃO, NENHUMA AÇÃO)
ENGINE = InnoDB;
- ------------------------------------------------ -----
- Tabela `mydb`.`Categoria`
- ------------------------------------------------ -----
CRIAR  TABELA  SE NÃO EXISTE ` mydb ` . ` Categoria ` (
` IdCategoria `  INT  NOT NULL ,
` Piso `  VARCHAR ( 45 ) NULL ,
` Equipamentos `  VARCHAR ( 45 ) NULL ,
` Eletricos `  VARCHAR ( 45 ) NULL ,
` Parede `  VARCHAR ( 45 ) NULL ,
` Problema_idProblema `  INT  NOT NULL ,
PRIMÁRIA CHAVE ( ` idCategoria ` ),
ÍNDICE ` fk_Categoria_Problema1_idx ` ( ` Problema_idProblema `  ASC ),
RESTRIÇÃO  ` fk_Categoria_Problema1 ` 
EXTERNA CHAVE ( ` Problema_idProblema ` )
Referências  ` meubd ` . ` Problema ` ( ` idProblema ` )
AO EXCLUIR, NENHUMA AÇÃO
NA  ATUALIZAÇÃO, NENHUMA AÇÃO)
ENGINE = InnoDB;
- ------------------------------------------------ -----
- Tabela `mydb`.`Fiscal`
- ------------------------------------------------ -----
CRIAR  TABELA  SE NÃO EXISTE ` mydb ` . ` Fiscal ` (
` IdFiscal `  INT  NOT NULL ,
` Nomo `  VARCHAR ( 45 ) NULL ,
` Contato `  VARCHAR ( 45 ) NULL ,
` Problema_idProblema `  INT  NOT NULL ,
PRIMÁRIA CHAVE ( ` idFiscal ` ),
ÍNDICE ` fk_Fiscal_Problema1_idx ` ( ` Problema_idProblema `  ASC ),
RESTRIÇÃO  ` fk_Fiscal_Problema1 ` 
EXTERNA CHAVE ( ` Problema_idProblema ` )
Referências  ` meubd ` . ` Problema ` ( ` idProblema ` )
AO EXCLUIR, NENHUMA AÇÃO
NA  ATUALIZAÇÃO, NENHUMA AÇÃO)
ENGINE = InnoDB;
SET SQL_MODE = @OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS = @OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS = @OLD_UNIQUE_CHECKS;
