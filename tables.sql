create table Aluno (
  matriculaAluno int,
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

insert into Aluno
values(20257, 'Kee Mario', 18, 'mario@gmail.com'),
(20258, 'Lito Oranno', 19, 'lito@gmail.com'),
(20259, 'Paula Adentto', 19, 'paula@gmail.com'),
(202510, 'Deide Costa' , 18, 'deide@gmail.com'),
(202511, 'Paula Nabussa', 20, 'paulana@gmail.com');

insert into Aluno
values(202512, 'Pedro Loss', 25, 'pedroloss@gmail.com'),
(202513, 'Jalan Bipaul' , 22 , 'jalan@gmail.com'),
(202514, 'Milan Buzza', 25, 'milan@gmail.com'),
(202515, 'Isadora Pinto',26 , 'isap@gmail.com'),
(202516, 'Kevin Sergay', 23, 'kevinho@gmail.com');

/* Inserir curso */

insert into Curso
values(1, 'Engenharia de Software', 4000, '2025-02-01', '2029-12-15');

insert into Curso
values(2, 'Ciência da Computação', 3800, '2024-08-10', '2028-06-20');

insert into Curso
values(3, 'Administração', 3000, '2025-03-15', '2029-11-30');

/* Associar alunos aos cursos */

insert into Participa
values(20251,1), (20252,1),(20253,1),(20254,1), (20255,1),
(20256,2), (20257,2),(20258,2),(20259,2), (202510,2),
(202511,3), (202512,3),(202513,3),(202514,3), (202515,3), (202516,3);

/* Associar disciplinas aos cursos */

insert into Possui
values(1,1),(1,2),(1,3),(1,4),(1,5),(2,1),(2,2),(2,3),(2,4),(2,5),(3,1),(3,2),(3,3),(3,4),(3,5);

/* Inserir notas dos alunos */

insert into Boletim
values(20251, 1, 70, 85,95),
	  (20251, 2, 75, 85,80),
      (20251, 3, 90, 85,95),
      (20251, 4, 100, 95,95),
      (20251, 5, 70, 75,80),
      (20252, 1, 70, 85,95),
	  (20252, 2, 75, 85,80),
      (20252, 3, 90, 85,95),
      (20252, 4, 100, 95,95),
      (20252, 5, 70, 75,80),
      (20253, 1, 70, 85,95),
	  (20253, 2, 75, 85,80),
      (20253, 3, 90, 85,95),
      (20253, 4, 100, 95,95),
      (20253, 5, 70, 75,80),
      (20254, 1, 70, 85,95),
	  (20254, 2, 75, 85,80),
      (20254, 3, 90, 85,95),
      (20254, 4, 100, 95,95),
      (20254, 5, 70, 75,80),
      (20255, 1, 70, 85,95),
	  (20255, 2, 75, 85,80),
      (20255, 3, 90, 85,95),
      (20255, 4, 100, 95,95),
      (20255, 5, 70, 75,80),
      (20256, 1, 70, 85,95),
	  (20256, 2, 75, 85,80),
      (20256, 3, 90, 85,95),
      (20256, 4, 100, 95,95),
      (20256, 5, 70, 75,80),
      (20257, 1, 70, 85,95),
	  (20257, 2, 75, 85,80),
      (20257, 3, 90, 85,95),
      (20257, 4, 100, 95,95),
      (20257, 5, 70, 75,80),
      (20258, 1, 70, 85,95),
	  (20258, 2, 75, 85,80),
      (20258, 3, 90, 85,95),
      (20258, 4, 100, 95,95),
      (20258, 5, 70, 75,80),
      (20259, 1, 70, 85,95),
	  (20259, 2, 75, 85,80),
      (20259, 3, 90, 85,95),
      (20259, 4, 100, 95,95),
      (20259, 5, 70, 75,80),
      (202510, 1, 70, 85,95),
	  (202510, 2, 75, 85,80),
      (202510, 3, 90, 85,95),
      (202510, 4, 100, 95,95),
      (202510, 5, 70, 75,80),
      (202511, 1, 70, 85,95),
	  (202512, 2, 75, 85,80),
      (202513, 3, 90, 85,95),
      (202514, 4, 100, 95,95),
      (202515, 5, 70, 75,80),
      (202516, 5, 70, 75,80);
      
