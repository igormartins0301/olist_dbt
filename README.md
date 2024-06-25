# Projeto dbt - Transformação de Dados

Este é um projeto dbt (Data Build Tool) que realiza a transformação de dados em um ambiente de data warehouse.

## Sobre o Projeto

O objetivo deste projeto é criar um pipeline de transformação de dados confiável e escalável, que possa ser facilmente mantido e atualizado ao longo do tempo.

Usando o dbt, nós:

1. Extraímos dados de fontes de dados brutas (como bancos de dados, arquivos CSV, etc.).
2. Transformamos esses dados em modelos de dados limpos e estruturados.
3. Carregamos os dados transformados em um data warehouse.
4. Documentamos e testamos os modelos de dados para garantir a qualidade e a integridade dos dados.

## Estrutura do Projeto

- **STAGING**: Camada com tratamentos simples em colunas, tipagem de dados e pequenas transformações. 1x1 com tabelas Raw
- **MARTS**: Agregação de tabelas por assunto, facilitando a manipulação das áreas de negócios, exemplo: uma tabela com todas as informações relacionadas aos pedidos
- **REPORTS**: Tabelas com visualizações únicas que alimentam BI. exemplo: Média de preço e frete por produto.

![image](/dbt-dat.png)
