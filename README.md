# Modelagem de Banco de Dados – Sistema Acadêmico  
**Portfólio – Database Modeling & SQL**  
**Aluno:** Marcos André Alves da Silva  
**Instituição:** UniFECAF  
**Disciplina:** Database Modeling & SQL  
**Tutor:** Fernando Leonid  

---

## Descrição do Projeto

Este repositório apresenta o desenvolvimento completo de um sistema de banco de dados para uma instituição de ensino fictícia. O objetivo é modelar e implementar uma solução capaz de armazenar e gerenciar informações relacionadas a alunos, cursos, disciplinas, professores, turmas, matrículas e avaliações.

O projeto contempla as três etapas fundamentais da modelagem de dados:

- Modelo Conceitual  
- Modelo Lógico  
- Modelo Físico (SQL)

Também inclui consultas SQL e inserções de dados para testes.

---

## Objetivo Acadêmico

Atender aos requisitos da disciplina *Database Modeling & SQL*, demonstrando domínio sobre:

- Levantamento e análise de requisitos  
- Modelagem conceitual (DER)  
- Modelagem lógica (tabelas, atributos, cardinalidades)  
- Implementação física em SQL  
- Criação de relacionamentos, chaves primárias e estrangeiras  
- Execução de consultas SQL para análise de dados  

---

## 1. Cenário

Os proprietários de uma faculdade necessitam de um sistema capaz de armazenar e organizar informações acadêmicas essenciais, permitindo:

- Cadastro de alunos, professores, cursos e disciplinas  
- Formação de turmas  
- Registro de matrículas  
- Armazenamento de avaliações e notas  
- Geração de relatórios acadêmicos  

O banco de dados deve oferecer suporte completo para essas operações.

---

## 2. Levantamento de Requisitos

Principais requisitos identificados:

- **Alunos:** nome, CPF, data de nascimento, endereço, telefone, histórico acadêmico  
- **Cursos:** nome, carga horária, disciplinas associadas, período letivo  
- **Disciplinas:** nome, código, professor responsável, curso vinculado, carga horária  
- **Professores:** nome, CPF, titulação, disciplinas lecionadas, contato  
- **Turmas:** código, período letivo, professor responsável, alunos matriculados  
- **Avaliações:** tipo, data, nota, disciplina e aluno  
- **Histórico acadêmico:** registro de todas as disciplinas cursadas e notas  
- **Relatórios:** desempenho, frequência e histórico  
- **Controle de usuários:** permissões para administradores, professores e alunos  
- **Integração:** possível integração com sistemas financeiros  

---

## 3. Modelo Conceitual

O modelo conceitual representa as entidades principais e seus relacionamentos:

- Aluno  
- Endereço  
- Telefone  
- Curso  
- Professor  
- Disciplina  
- Turma  
- Matrícula  
- Avaliação  

Arquivo: **modelo_conceitual.brm**

---

## 4. Modelo Lógico

O modelo lógico detalha:

- Tabelas  
- Atributos  
- Tipos de dados  
- Cardinalidades  
- Chaves primárias e estrangeiras  
- Índices  

Arquivo: **modelo_logico.mwb**

---

## 5. Modelo Físico (SQL)

O modelo físico implementa o banco de dados em MySQL, incluindo:

- Criação do banco `db_portifolio_faculdade`  
- Criação das tabelas  
- Definição de constraints  
- Inserção de dados para testes  
- Consultas SQL para validação  

Arquivo: **modelo_fisico.sql**

---

## Estrutura do Repositório
```
Portifolio_Database-Modeling-SQL/
├── modelo_conceitual.brm         # Diagrama conceitual (BR Modelo)
├── modelo_logico.mwb             # Modelo lógico (MySQL Workbench)
├── modelo_fisico.sql             # Script SQL com estrutura e dados
├── Trabalho_Portifolio.pdf       # Documento acadêmico completo
└── README.md                     # Documentação do projeto
```
---

## Execução

1. Importar o arquivo `modelo_fisico.sql` em um servidor MySQL.  
2. Executar os comandos de criação das tabelas.  
3. Rodar os inserts para popular o banco.  
4. Utilizar as consultas fornecidas para validação e análise.

---

## Links
```
| Recurso | Link |
|--------|------|
| **Repositório GitHub** | https://github.com/MSilva993/Portifolio_Database-Modeling-SQL |
```
---

## Tecnologias Utilizadas

- MySQL  
- MySQL Workbench  
- BR Modelo  
- SQL ANSI  

---

## Conclusão

Este projeto demonstra a aplicação prática dos conceitos de modelagem de dados e SQL, estruturando um sistema acadêmico completo e funcional. 
Ele serve como portfólio profissional e como evidência de domínio técnico na área de banco de dados.
