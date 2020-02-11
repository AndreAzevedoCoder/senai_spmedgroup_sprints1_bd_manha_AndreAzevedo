USE SPMedGroup_Manha


INSERT INTO filial(endereco,nome,CNPJ)
VALUES('Av. Barão Limeira, 532, São Paulo, SP','Clinica Possarle','86400902000130')


INSERT INTO tipoUsuario (titulo)
VALUES('Usuario'),
('Medico'),
('Recepcionista');


INSERT INTO Usuario(idFilial,idTipoUsuario,nome           ,dataDeNascimento,email,                                telefone,     RG,           CPF,           endereco,             senha)
VALUES               (1,       2,           'Ricardo Lemos','15-06-1997'    ,'ricardo.lemos@spmedicalgroup.com.br','11935752387','3272585452','523784365','Rua dos Medicos, 54','123456'),
                     (1,       3,           'Ligia Machado','13-10-1983'    ,'ligia@spmedicalgroup.com.br','11935453387','3273455452','523484365','Rua dos Recepcionistas, 54','123456'),
                     (1,       1,           'Gustavo Casco','31-08-2001'    ,'gustavosk8@gmail.com','119707070','99932922','324234235','rua Finandal, 2024','123456');


INSERT INTO especialidade(tituloEspecialidade)
VALUES ('Acupuntura'),
('Anestesiologia'),
('Angiologia'),
('Cardiologia'),
('Cirurgia Cardiovascular'),
('Cirurgia da Mão'),
('Cirurgia do Aparelho Digestivo'),
('Cirurgia Geral'),
('Cirurgia Pediatrica'),
('Cirurgia Plastica'),
('Cirurgia Torácica'),
('Cirurgia Vascular'),
('Dermatologia'),
('Radioterapia'),
('Urologia'),
('Pediatria'),
('Psiquiatria');


INSERT INTO medicos(idEspecialidade,idUsuario,CRM)
VALUES(2,7,'54356-SP')

INSERT INTO recepcionistas (idUsuario)
VALUES(8)

INSERT INTO pacientes(idUsuario)
VALUES(9)

INSERT INTO consulta(idFilial,idMedicos,idRecepcionista,idPacientes,situacao,dataDaConsulta)
VALUES(1,9,1,1,'Ainda nao realizada','11-05-2020')






















