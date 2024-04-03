create table Prof (
	cod_prof int primary key identity (1,1),
	cpf_prof varchar (50),
	nome_prof varchar (50)
)
select * from Prof
	INSERT INTO Prof VALUES (46627439681,'Amanda');
	INSERT INTO Prof VALUES (16775414321,'Anderson');
	INSERT INTO Prof VALUES (17146645124,'Luiz');
	INSERT INTO Prof VALUES (33444221241,'Cristiane');
	INSERT INTO Prof VALUES (74335215752,'Andrea');
	INSERT INTO Prof VALUES (46427363716,'Monica');
	INSERT INTO Prof VALUES (77742666757,'Rafael');
	INSERT INTO Prof VALUES (12257755216,'Joira');
	INSERT INTO Prof VALUES (52572672624,'João');
	INSERT INTO Prof VALUES (35555561717,'José');


create table Curso (
	cod_cur int primary key identity (1,1),
	sigla_cur varchar (50)
)
select * from Curso

	INSERT INTO Curso VALUES ('IPI');
	INSERT INTO Curso VALUES ('DS');
	INSERT INTO Curso VALUES ('EV');
	INSERT INTO Curso VALUES ('ED');
	INSERT INTO Curso VALUES ('ADM');
	INSERT INTO Curso VALUES ('CT');
	INSERT INTO Curso VALUES ('RH');
	INSERT INTO Curso VALUES ('LG');
	INSERT INTO Curso VALUES ('MD');
	INSERT INTO Curso VALUES ('MT');
	

create table Disciplina (
	cod_dis int primary key identity (1,1),
	cod_prof int foreign key references Prof (cod_prof),
	cod_cur int foreign key references Curso (cod_cur),
	nome_dis varchar (50)
)
select * from Disciplina

	INSERT INTO Disciplina VALUES (1,1,'Programação web');
	INSERT INTO Disciplina VALUES (10,2,'Análise de sistemas');
	INSERT INTO Disciplina VALUES (2,3,'Organização de eventos');
	INSERT INTO Disciplina VALUES (4,4,'Geólogia');
	INSERT INTO Disciplina VALUES (3,5,'Administração Científica');
	INSERT INTO Disciplina VALUES (8,6,'Matemática');
	INSERT INTO Disciplina VALUES (5,7,'Ética');
	INSERT INTO Disciplina VALUES (6,8,'Empreendedorismo');
	INSERT INTO Disciplina VALUES (7,9,'Anatomia');
	INSERT INTO Disciplina VALUES (9,10,'Logaritmo');
	

create table Aluno (
	cod_an int primary key identity (1,1),
	cod_cur int foreign key references Curso (cod_cur),
	cpf_an varchar (50),
	telefone_an varchar (50),
	nome_an varchar (50)
	
)
select * from Aluno

	INSERT INTO Aluno VALUES (1,5748392365,8137547114,'Anna')
	INSERT INTO Aluno VALUES (2,5884407298,7928875273,'Ian');
	INSERT INTO Aluno VALUES (3,7586249219,9731826591,'Vinicius');
	INSERT INTO Aluno VALUES (4,3513248952,9738383853,'Giovani');
	INSERT INTO Aluno VALUES (5,1564486659,6635559546,'Lucas');
	INSERT INTO Aluno VALUES (6,4512366746,4637431632,'Gustavo');
	INSERT INTO Aluno VALUES (7,4518578554,6324323697,'Manuel');
	INSERT INTO Aluno VALUES (8,8744525629,9623532426,'Davi');
	INSERT INTO Aluno VALUES (9,8732654675,'Juliana');
	INSERT INTO Aluno VALUES (10,098376524,'Guilherme');

create table Aluno_Disciplina(
	cod_andis int primary key identity (1,1),
	cod_dis int foreign key references Disciplina (cod_dis),
	cod_an int foreign key references Aluno (cod_an),
	andis_notas varchar (10),
	andis_faltas int
)
select * from Aluno_Disciplina

	INSERT INTO Aluno_Disciplina VALUES (1,10,'MB',220);
	INSERT INTO Aluno_Disciplina VALUES (2,3,'B',58);
	INSERT INTO Aluno_Disciplina VALUES (3,2,'I',2);
	INSERT INTO Aluno_Disciplina VALUES (4,4,'R',170);
	INSERT INTO Aluno_Disciplina VALUES (5,6,'B',25);
	INSERT INTO Aluno_Disciplina VALUES (6,5,'MB',107);
	INSERT INTO Aluno_Disciplina VALUES (7,9,'I',305);
	INSERT INTO Aluno_Disciplina VALUES (8,7,'B',82);
	INSERT INTO Aluno_Disciplina VALUES (9,10,'R',147);
	INSERT INTO Aluno_Disciplina VALUES (10,1,'MB',3);
	
