# Entrega 02 - Estrutura do Banco de Dados
## Projeto Aplicado I - Schulz S.A.

### 1. Objetivo

O objetivo deste projeto é desenvolver um banco de dados
relacional utilizando SQLite para organizar as informações
dos equipamentos, técnicos e medições da empresa Schulz S.A.

Atualmente, o processo utiliza planilhas para armazenar dados.
O banco de dados permitirá organizar essas informações,
facilitando consultas e preservando o histórico de calibrações.

### 2. Entidades do Banco de Dados

O sistema será dividido em três entidades principais.

#### Técnicos e Solicitantes

Esta tabela armazenará os dados dos profissionais responsáveis
pelas solicitações e pelos procedimentos de calibração.
Cada profissional terá um identificador único.
Isso permitirá identificar os responsáveis pelas atividades.

#### Equipamentos

Esta tabela armazenará os equipamentos cadastrados.
Cada equipamento terá um código de identificação.
Também serão armazenados seu nome, modelo e número de série.
Os equipamentos poderão ser relacionados aos profissionais.

#### Medições

Esta tabela armazenará os resultados das calibrações.
Cada medição estará relacionada a um equipamento.
Serão registrados o parâmetro analisado, valor nominal,
valor obtido, tolerâncias e situação da medição.
Os registros permitirão consultar resultados anteriores.

### 3. Relacionamento entre as Tabelas

As tabelas utilizarão chaves primárias (PK) para identificar
cada registro de maneira única.

As chaves estrangeiras (FK) permitirão relacionar
os equipamentos aos profissionais e às medições realizadas.

Um profissional poderá estar associado a vários equipamentos.
Um equipamento poderá possuir várias medições.

### 4. Importância de Evitar Dados Duplicados

Evitar dados duplicados é importante para manter
a organização e a confiabilidade das informações.

Sem essa organização, o mesmo profissional poderia
ser cadastrado repetidamente em diferentes registros.

Ao separar as informações em tabelas relacionadas,
reduzimos a repetição desnecessária de dados.

Isso facilita atualizações, consultas e manutenção do sistema,
além de contribuir para a integridade dos registros.

### 5. Conclusão

A utilização do SQLite permitirá estruturar os dados
de maneira organizada e facilitar o acompanhamento
das medições e calibrações realizadas pela Schulz S.A.
