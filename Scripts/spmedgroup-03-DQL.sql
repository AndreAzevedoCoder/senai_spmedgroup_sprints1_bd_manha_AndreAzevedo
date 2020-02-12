USE SPMedGroup_Manha

SELECT * FROM consulta
INNER JOIN filial ON filial.idFilial = consulta.idFilial
INNER JOIN medicos ON medicos.idMedico = consulta.idMedicos
INNER JOIN especialidade ON especialidade.idEspecialidade = medicos.idEspecialidade

SELECT situacao,dataDaConsulta,endereco,nome,endereco,tituloEspecialidade FROM consulta
INNER JOIN filial ON filial.idFilial = consulta.idFilial
INNER JOIN medicos ON medicos.idMedico = consulta.idMedicos
INNER JOIN especialidade ON especialidade.idEspecialidade = medicos.idEspecialidade


SELECT COUNT(*)  
FROM usuario;  
 

SELECT CONVERT(VARCHAR(10),dataDeNascimento, 110) AS [MM/DD/YY] FROM usuario 


SELECT COUNT(DISTINCT idEspecialidade)  
FROM medicos
WHERE idEspecialidade = 2
;  

CREATE PROCEDURE PegarIdade @idUsuario int
AS
SELECT (CONVERT(int,CONVERT(char(8),GETDATE(),112))-CONVERT(char(8),dataDeNascimento,112))/10000 AS Idade
FROM usuario
WHERE idUsuario = @idUsuario

EXEC PegarIdade 7
