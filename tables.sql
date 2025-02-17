create table Aluno (
  MatriculaAluno int,
  nomeAluno varchar(45),
  idade int,
  email varchar(45),
  primary key(MatriculaAluno)
);

create table Curso (
  CodCurso int,
  nomeCurso varchar(45),
  cargaHoraria int,
  inicio date,
  fim date,
  primary key(CodCurso)
);

create table Professor (
  matriculaProfessor int,
  nome varchar(45),
  idade int,
  email varchar(45),
  primary key(matriculaProfessor)
  
);

create table Disciplina (
  codDisciplina int,
  nome varchar(45),
  cargaHoraria int,
  professor_matriculaProfessor int,
  primary key(codDisciplina),
  
  foreign key(professor_matriculaProfessor)
  	references Professor(matriculaProfessor)
  
);

create table Participa (
  aluno_matriculaAluno int,
  curso_codCurso int,
  
  foreign key(aluno_matriculaAluno) 
  	references Aluno(matriculaAluno),
  foreign key(curso_codCurso) 
  	references Curso(codCurso)
);

create table Possui (
  curso_codCurso int,
  disciplina_codDisciplina int,
  
  foreign key(curso_codCurso) 
  	references Curso(codCurso),
  foreign key(disciplina_codDisciplina) 
  	references Disciplina(codDisciplina)
);

create table Boletim (
  aluno_matriculaAluno int,
  disciplina_codDisciplina int,
  nota1 int,
  nota2 int,
  nota3 int,
  
  primary key (aluno_matriculaAluno, disciplina_codDisciplina),
  
  foreign key(aluno_matriculaAluno)
  	references Aluno(matriculaAluno),
  
  foreign key(disciplina_codDisciplina)
  	references Disciplina(codDisciplina)
);


/* Inserir Professores */

insert into Professor
values(001, 'H. Romeu Pinto', 35, 'hugoromeu@gmail.com');

insert into Professor
values(002, 'Oscar Alho', 28, 'oscar@gmail.com');

insert into Professor
values(003, 'Davi Agra', 50, 'davi@gmail.com');

insert into Professor
values(004, 'Ana Konda', 30, 'konda@gmail.com');

insert into Professor
values(005, 'Thaís Freganno', 25, 'thaisfreganno@gmail.com');


/* Inserir Disciplinas */

insert into Disciplina
values(1, 'portugues', 70, 002);

insert into Disciplina
values(2, 'matematica', 70, 003);

insert into Disciplina
values(3, 'geografia', 70, 005);

insert into Disciplina
values(4, 'historia', 70, 001);

insert into Disciplina
values(5, 'ciencias', 70, 004);

/* Inserir Alunos */

insert into Aluno
values(20251, 'Euma Maria', 15, 'eumamaria@gmail.com');

insert into Aluno
values(20252, 'Paula Tejano', 14, 'paulatejano@gmail.com');

insert into Aluno
values(20253, 'Tommy Leite', 14, 'tommyleitec@gmail.com');

insert into Aluno
values(20254, 'Thales Follano', 16, 'tataff@gmail.com');

insert into Aluno
values(20255, 'Silas Canno', 15, 'sillasc@gmail.com');

insert into Aluno
values(20256, 'Eva Dias', 16, 'dias@gmail.com');

/* Inserir curso */

insert into Curso
values(1, 'Engenharia de Software', 4000, '2025-02-01', '2029-12-15');

insert into Curso
values(2, 'Ciência da Computação', 3800, '2024-08-10', '2028-06-20');

insert into Curso
values(3, 'Administração', 3000, '2025-03-15', '2029-11-30');

/* Associar alunos aos cursos */

insert into Participa
values(20251,1), (20252,1),(20253,1),(20254,1), (20255,1);

/* Associar disciplinas aos cursos */

insert into Possui
values(1,1),(1,2),(1,3),(1,4),(1,5),(2,1),(2,2),(2,3),(2,4),(2,5),(3,1),(3,2),(3,3),(3,4),(3,5);

/* Inserir notas dos alunos */

insert into Boletim
values(20251, 1, 70, 85,95),
	  (20251, 2, 75, 85,80),
      (20251, 3, 90, 85,95),
      (20251, 4, 100, 95,95),
      (20251, 5, 70, 75,80);