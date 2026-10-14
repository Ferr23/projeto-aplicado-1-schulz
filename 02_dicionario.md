# Dicionário de Dados
## Projeto Aplicado I - Schulz S.A.

### Objetivo

Este documento apresenta os campos utilizados no banco de dados
SQLite para armazenar técnicos, equipamentos e medições.

Os campos foram definidos a partir das informações encontradas
na planilha e no certificado de calibração da Schulz S.A.

## 1. Tabela: tecnicos

| Campo | Tipo | Descrição |
|---|---|---|
| id_tecnico | INTEGER | Identificador único do profissional (PK) |
| nome | TEXT | Nome do técnico ou solicitante |
| tipo | TEXT | Identifica se é técnico ou solicitante |

## 2. Tabela: equipamentos

| Campo | Tipo | Descrição |
|---|---|---|
| id_equipamento | INTEGER | Identificador único do equipamento (PK) |
| codigo | TEXT | Código do equipamento |
| denominacao | TEXT | Nome ou descrição do equipamento |
| fabricante | TEXT | Fabricante do equipamento |
| valor_nominal_geral | TEXT | Informação nominal geral do instrumento |

## 3. Tabela: medicoes

| Campo | Tipo | Descrição |
|---|---|---|
| id_medicao | INTEGER | Identificador único da medição (PK) |
| id_equipamento | INTEGER | Equipamento relacionado à medição (FK) |
| id_tecnico | INTEGER | Técnico responsável pela medição (FK) |
| id_solicitante | INTEGER | Solicitante da calibração (FK) |
| numero_certificado | TEXT | Número do certificado de calibração |
| data_medicao | TEXT | Data da calibração |
| parametro | TEXT | Parâmetro avaliado |
| valor_nominal | REAL | Valor nominal esperado |
| tolerancia_positiva | REAL | Tolerância máxima positiva |
| tolerancia_negativa | REAL | Tolerância máxima negativa |
| medida_1 | REAL | Primeira medição realizada |
| medida_2 | REAL | Segunda medição realizada |
| media | REAL | Média das medições |
| desvio_padrao | REAL | Desvio padrão das medições |
| valor_obtido | REAL | Resultado final da medição |
| erro | REAL | Diferença entre valor obtido e nominal |
| status | TEXT | Situação da medição: conforme ou não conforme |

## 4. Tipos de Dados

INTEGER: utilizado para números inteiros e identificadores.

TEXT: utilizado para nomes, códigos, datas e descrições.

REAL: utilizado para valores numéricos com casas decimais.

## 5. Relacionamentos

A tabela medicoes utiliza id_equipamento para identificar
o equipamento que passou pela calibração.

O campo id_tecnico identifica o técnico executante.

O campo id_solicitante identifica quem solicitou a calibração.

Os três campos utilizam chaves estrangeiras (FK).

Um equipamento pode possuir várias medições, realizadas
por diferentes técnicos e solicitadas por diferentes setores.

## 6. Observação

O campo status será utilizado para indicar se o resultado
está dentro ou fora das tolerâncias estabelecidas.

Os campos de identificação e relacionamento foram
adicionados para organizar o banco de dados relacional.
