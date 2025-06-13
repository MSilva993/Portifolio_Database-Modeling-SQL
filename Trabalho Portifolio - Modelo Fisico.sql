####### Portifolio - Sistema Faculdade #######

create database db_portifolio_faculdade;
use db_portifolio_faculdade;

create table tbl_aluno (
	id int not null primary key auto_increment,
    nome varchar(45) not null,
    data_nascimento date not null,
    cpf varchar(15) unique not null
);

alter table endereco rename to tbl_endereco;
create table endereco (
    id_endereco int primary key auto_increment,
    id_aluno int not null,
    rua varchar(150) not null,
    cidade varchar(100) not null,
    estado varchar(50) not null,
    cep varchar(10) not null,
    foreign key (id_aluno) references tbl_aluno(id)
);

alter table telefone rename to tbl_telefone;
create table telefone (
    id int primary key auto_increment,
    id_aluno int not null,
    numero varchar(20) not null,
    foreign key (id_aluno) references tbl_aluno(id)
);

create table tbl_curso (
    id int primary key auto_increment,
    codigo varchar(20) unique not null,
    nome varchar(100) not null,
    carga_horaria int not null check (carga_horaria > 0),
    periodo_letivo enum('Semestral', 'Anual', 'Trimestral') not null
);

create table tbl_professor (
    id int primary key auto_increment,
    cpf varchar(14) unique not null,
    nome varchar(100) not null,
    titulacao varchar(100) not null,
    contato varchar(150) not null
);

create table tbl_disciplina (
    id int primary key auto_increment,
    codigo varchar(100) not null,
    nome varchar(100) not null,
    carga_horaria int not null check (carga_horaria > 0),
    id_professor int not null,
    id_curso int not null,
    foreign key (id_professor) references tbl_professor(id),
    foreign key (id_curso) references tbl_curso(id)
);

create table tbl_turma (
    id int primary key auto_increment,
    codigo varchar(20) not null,
    periodo_letivo varchar(20) not null,
    id_curso int not null,
    id_professor int not null,
    foreign key (id_curso) references tbl_curso(id),
    foreign key (id_professor) references tbl_professor(id)
);

create table tbl_matricula (
    id int primary key auto_increment,
    id_aluno int not null,
    id_turma int not null,
    data_matricula date not null,
    foreign key (id_aluno) references tbl_aluno(id),
    foreign key (id_turma) references tbl_turma(id)
);

create table tbl_avaliacao (
    id int primary key auto_increment,
    codigo varchar(100) not null,
    tipo enum('prova', 'trabalho', 'seminário') not null,
    nota decimal(5,2) check (nota >= 0 and nota <= 10),
    data_avaliacao date not null,
    id_disciplina int not null,
    id_aluno int not null,
    foreign key (id_disciplina) references tbl_disciplina(id),
    foreign key (id_aluno) references tbl_aluno(id)
);

##### Inserindo dados para testes #####

insert into tbl_aluno (nome, data_nascimento, cpf) values 
('João Silva', '1990-05-15', '12345678901'),
('Maria Oliveira', '1992-10-22', '98765432100');

insert into tbl_curso (codigo, nome, carga_horaria, periodo_letivo) values
('MAT101', 'Matemática Básica', 60, 'Semestral'),
('HIS202', 'História Geral', 80, 'Anual');

insert into tbl_professor (cpf, nome, titulacao, contato) values
('12345678901', 'Carlos Mendes', 'Doutor em Física', 'carlos@email.com'),
('98765432100', 'Ana Souza', 'Mestre em História', 'ana@email.com');


select * from tbl_aluno;
select * from tbl_curso;
select * from tbl_professor;

insert into tbl_disciplina (id, codigo, nome, carga_horaria, id_professor, id_curso) values
(1, 'MAT101', 'Matemática Básica', 60, 1, 1),
(2, 'HIS202', 'História Geral', 80, 2, 2);

insert into tbl_turma (codigo, periodo_letivo, id_curso, id_professor) values
('TUR001', '2025.1', 1, 1),
('TUR002', '2025.1', 2, 2);

insert into tbl_matricula (id_aluno, id_turma, data_matricula) values
(1, 1, '2025-02-10'),
(2, 2, '2025-02-12');

insert into tbl_avaliacao (codigo, tipo, nota, data_avaliacao, id_disciplina, id_aluno) values
('AV001', 'prova', 8.5, '2025-03-15', 1, 1),
('AV002', 'trabalho', 9.0, '2025-04-10', 2, 2);

select * from tbl_turma;
select * from tbl_matricula;
select * from tbl_avaliacao;

##### Consultar alunos e suas matrículas #####

##### Listar os alunos matriculados e suas respectivas turmas #####

select a.nome, t.codigo as turma, m.data_matricula 
from tbl_matricula m
join tbl_aluno a on m.id_aluno = a.id
join tbl_turma t on m.id_turma = t.id;


##### Listar avaliações com nota maior ou igual a 8, incluindo a disciplina e aluno correspondente #####

select a.codigo, a.tipo, a.nota, d.nome as disciplina, al.nome as aluno 
from tbl_avaliacao a
join tbl_disciplina d on a.id_disciplina = d.id
join tbl_aluno al on a.id_aluno = al.id
where a.nota >= 8
order by a.nota desc;



