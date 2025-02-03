create table Aluno(
  MatriculaAluno int,
  nomeAluno varchar(45),
  idade int,
  email varchar(45)
  primary key(MatriculaAluno),
  unique(matriculaAluno)
  
 )
 
 create table Participa(
   Aluno_matriculaAluno int,
   curso_codCurso int
   
   foreign key(Aluno_matriculaAluno)
     references Aluno(matriculaAluno)
   foreign key(curso_codCurso)
     references Curso(codCurso)
  
 )
  
create table Professor(
  IdProfessor int,
  matricula int,
  nome varchar(45),
  email varchar(45)
  primary key(IdProfessor),
  unique(IdProfessor),
  unique(matricula)
  
  )
  
create table Curso(
  CodCurso int,
  nomeCurso varchar(45),
  cargaHoraria int,
  inicio date,
  fim date,
  primary key(CodCurso),
  unique key(CodCurso)
  
 )
 
 create table Possui(
   curso_codCurso int,
   disciplina_codDisciplina int
   
   foreign key(curso_codCurso)
     references Curso(codCurso)
   foreign key(disciplina_codDisciplina)
     references Disciplina(codDisciplina)
 
 )

create table Disciplina(
  codDisciplina int,
  nome varchar(45),
  nota1 int,
  nota2 int,
  nota3 int,
  primary key(codDisciplina),
  unique key(codDisciplina)
  
)


