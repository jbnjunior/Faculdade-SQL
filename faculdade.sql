-- Criar o banco de dados, se ele não existir
CREATE DATABASE IF NOT EXISTS Faculdade;

-- Selecionar o banco de dados para uso
USE Faculdade;

-- Criar a tabela Alunos
CREATE TABLE IF NOT EXISTS Alunos (
   ID_Aluno INT PRIMARY KEY,
   Nome VARCHAR(100) NOT NULL,
   Data_Nascimento DATE NOT NULL,
   Email VARCHAR(100) UNIQUE NOT NULL
);

-- Criar a tabela Materias
CREATE TABLE IF NOT EXISTS Materias (
   ID_Materia INT PRIMARY KEY,
   Nome_Materia VARCHAR(100) NOT NULL
);

-- Criar a tabela Notas
CREATE TABLE IF NOT EXISTS Notas (
   ID_Nota INT PRIMARY KEY,
   ID_Aluno INT NOT NULL,
   ID_Materia INT NOT NULL,
   Nota FLOAT NOT NULL,
   FOREIGN KEY (ID_Aluno) REFERENCES Alunos(ID_Aluno),
   FOREIGN KEY (ID_Materia) REFERENCES Materias(ID_Materia)
);

-- Criar a tabela Cursos
CREATE TABLE IF NOT EXISTS Cursos (
   ID_Curso INT PRIMARY KEY,
   Nome_Curso VARCHAR(100) NOT NULL
);

-- Criar a tabela Professores
CREATE TABLE IF NOT EXISTS Professores (
   ID_Professor INT PRIMARY KEY,
   Nome_Professor VARCHAR(100) NOT NULL,
   Email VARCHAR(100) UNIQUE NOT NULL
);

-- Criar a tabela Turmas
CREATE TABLE IF NOT EXISTS Turmas (
   ID_Turma INT PRIMARY KEY,
   ID_Curso INT NOT NULL,
   ID_Professor INT NOT NULL,
   FOREIGN KEY (ID_Curso) REFERENCES Cursos(ID_Curso),
   FOREIGN KEY (ID_Professor) REFERENCES Professores(ID_Professor)
);
