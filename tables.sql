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
