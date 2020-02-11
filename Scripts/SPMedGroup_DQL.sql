USE SPMedGroup_Manha

SELECT * FROM consulta
INNER JOIN filial ON filial.idFilial = consulta.idFilial
INNER JOIN medicos ON medicos.idMedico = consulta.idMedicos
INNER JOIN especialidade ON especialidade.idEspecialidade = medicos.idEspecialidade

SELECT situacao,dataDaConsulta,endereco,nome,endereco,tituloEspecialidade FROM consulta
INNER JOIN filial ON filial.idFilial = consulta.idFilial
INNER JOIN medicos ON medicos.idMedico = consulta.idMedicos
INNER JOIN especialidade ON especialidade.idEspecialidade = medicos.idEspecialidade
