
/* Procurando alunos que contém Paula no nome e quais cursos estão participando */

SELECT nomeAluno, 
       (SELECT nomeCurso 
        FROM Curso 
        WHERE codCurso = (SELECT curso_codCurso 
                          FROM Participa 
                          WHERE aluno_matriculaAluno = Aluno.matriculaAluno 
                          LIMIT 1)) AS curso
FROM Aluno 
WHERE nomeAluno LIKE '%Paula%';


/* Procurando alunos que ficaram com média superior a 90 na materia de historia */
SELECT nomeAluno, 
       (SELECT (nota1 + nota2 + nota3) / 3 
        FROM Boletim 
        WHERE aluno_matriculaAluno = Aluno.matriculaAluno  
        AND disciplina_codDisciplina = (SELECT codDisciplina 
                                        FROM Disciplina 
                                        WHERE nome = 'historia')) AS Media
FROM Aluno
WHERE (SELECT (nota1 + nota2 + nota3) / 3 
       FROM Boletim 
       WHERE aluno_matriculaAluno = Aluno.matriculaAluno 
       AND disciplina_codDisciplina = (SELECT codDisciplina 
                                       FROM Disciplina 
                                       WHERE nome = 'historia')) > 90;



/* Pesquisando o nome dos professores e suas respectivas materias */
SELECT nome, 
       (SELECT nome 
        FROM Disciplina 
        WHERE professor_matriculaProfessor = Professor.matriculaProfessor 
        LIMIT 1) AS materia
FROM Professor
WHERE matriculaProfessor IN (
    SELECT professor_matriculaProfessor 
    FROM Disciplina
);


/* Pesquisando o nome das materias cadastradas nos cursos e o nome dos respectivos cursos */

SELECT nome , nomeCurso
FROM Disciplina , Curso
WHERE codDisciplina IN (
    SELECT disciplina_codDisciplina 
    FROM Possui 
    WHERE curso_codCurso IN (
        SELECT codCurso 
        FROM Curso
    ) AND codCurso = Curso.codCurso
);