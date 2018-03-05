use Morumbichos;
go

insert into Veterinaria.Animal (nome,peso,sexo,cor,numMicrochip,especie,observacao,dataNasc, raca, idProprietario)

values

('anaquim','3.0','Feminino','Bege','1234','Cachorro','Não come peixe','2014/05/01','Vira lata', 20),
('dudu','50.0','Masculino','Preto','54321','Cachorro','Alergico a dipirona','2010/04/05','Dalmata',20 ),
('lagarticha','0.50','Masculino','Amarelo','445618','Ave','Braços curtos','2015/05/06','Calopsita',21);
('Blue','0.50','Masculino','Amarelo','445618','Ave','Braços curtos','2015/05/06','Calopsita',21);
('garfanhoto','0.50','Masculino','Amarelo','445618','Ave','Braços curtos','2015/05/06','Calopsita',22);
('chichi','0.50','Masculino','Amarelo','445618','Ave','Braços curtos','2015/05/06','Calopsita',23);
('chichi','0.50','Masculino','Amarelo','445618','Ave','Braços curtos','2015/05/06','Calopsita',30);
('GIGI','0.50','Masculino','Amarelo','445618','Ave','Braços curtos','2015/05/06','Calopsita',24);
('lala','0.50','Masculino','Amarelo','445618','Ave','Braços curtos','2015/05/06','Calopsita',28);
('tata','3.0','Feminino','Bege','1234','Cachorro','Não come peixe','2014/05/01','Vira lata', 29),
('capitão','50.0','Masculino','Preto','54321','Cachorro','Alergico a dipirona','2010/04/05','Dalmata',20 ),
('titchala','0.50','Masculino','Amarelo','445618','Ave','Braços curtos','2015/05/06','Calopsita',21);
('miau','0.50','Masculino','Amarelo','445618','Ave','Braços curtos','2015/05/06','Calopsita',22);
('garfanhoto','0.50','Masculino','Amarelo','445618','Ave','Braços curtos','2015/05/06','Calopsita',25);
('passa o rinho','0.50','Masculino','Amarelo','445618','Ave','Braços curtos','2015/05/06','Calopsita',23);
('teté','0.50','Masculino','Amarelo','445618','Ave','Braços curtos','2015/05/06','Calopsita',24);
('hamma','0.50','Masculino','Amarelo','445618','Ave','Braços curtos','2015/05/06','Calopsita',25);
('bibi','0.50','Masculino','Amarelo','445618','Ave','Braços curtos','2015/05/06','Calopsita',26);
('lari','0.50','Masculino','Amarelo','445618','Ave','Braços curtos','2015/05/06','Calopsita',27);
('naquim','3.0','Feminino','Bege','1234','Cachorro','Não come peixe','2014/05/01','Vira lata', 31),
('bebe','50.0','Masculino','Preto','54321','Cachorro','Alergico a dipirona','2010/04/05','Dalmata',32 ),
('kuzko','0.50','Masculino','Amarelo','445618','Ave','Braços curtos','2015/05/06','Calopsita',33);
('russo','0.50','Masculino','Amarelo','445618','Ave','Braços curtos','2015/05/06','Calopsita',34);
('rock','0.50','Masculino','Amarelo','445618','Ave','Braços curtos','2015/05/06','Calopsita',35);
('buzz','0.50','Masculino','Amarelo','445618','Ave','Braços curtos','2015/05/06','Calopsita',36);
('carteiro','0.50','Masculino','Amarelo','445618','Ave','Braços curtos','2015/05/06','Calopsita',37);
('ronaldo','0.50','Masculino','Amarelo','445618','Ave','Braços curtos','2015/05/06','Calopsita',38);
('vitinho','0.50','Masculino','Amarelo','445618','Ave','Braços curtos','2015/05/06','Calopsita',39);
('tete','0.50','Masculino','Amarelo','445618','Ave','Braços curtos','2015/05/06','Calopsita',40);
('Ryu','3.0','Feminino','Bege','1234','Cachorro','Não come peixe','2014/05/01','Vira lata', 41),


insert into Veterinaria.Funcionario(nome, apelido, cpf, dataNasc, cargo, situacao)

values

('Lucas','Lucas 155','12345678910','1999/08/23','zelador','ativo'),
('Bruno','Bruno 157','12345678911','1997/08/17','veterinario','ativo'),
('sabrina','bina','12345678911','1997/08/17','veterinario','ativo'),
('nayara','nay 157','12345678911','1997/08/17','veterinario','ativo'),
('matheus','matheus','12345678911','1997/08/17','veterinario','demitirdo'),
('danilo','danilove','12345678955','1998/06/07','recepcionista','demitido');


insert into Veterinaria.Proprietario(nome,email,cpf,observacao, dataNasc, logradouro, bairro, cidade, estado, cep)

values
('Lucas Araujo','araujinho@157.com','11987654321','Mau pagador','2000/05/11','Rua das casas','Bairro dos bairros','São Paulo','SP',''),
('Vitor Crecre','crepaldi@carlessi.com','12345678912','','1987/05/08','Freguesia do Ó','Freguesia do Ó','Freguesia do Ó','SP',''),
('Nayara','nayara@danilo.com','65432198712','braco curto','1987/12/04','Aldeia','Aldeia','Barueri','SP','');
('edson arantes','edson@danilo.com','65432198712','braco curto','1987/12/04','Aldeia','Aldeia','são caetanp','SP','');
('rogerio ceni','ceni@danilo.com','65432198712','braco curto','1987/12/04','Aldeia','Aldeia','mauá','SP','');
('julio batista','julio@danilo.com','65432198712','braco curto','1987/12/04','Aldeia','Aldeia','ribeirão pires','SP','');
('anderson silva','spider@danilo.com','65432198712','braco curto','1987/12/04','Aldeia','Aldeia','Barueri','SP','');
('larissa emanoela','larissa@danilo.com','65432198712','braco curto','1987/12/04','Aldeia','Aldeia','Barueri','SP','');
('daniel','daniel@hotmail.com','65432198712','braco curto','1987/12/04','Aldeia','Aldeia','Barueri','SP','');
('Danilo','dequebradinha@danilo.com','65432198712','braco curto','1987/12/04','Aldeia','Aldeia','Barueri','SP','');
('max','max@uol.com','65432198712','braco curto','1987/12/04','Aldeia','Aldeia','Barueri','SP','');
('silvia','silvia@globo.com','65432198712','braco curto','1987/12/04','Aldeia','Aldeia','Barueri','SP','');
('lauriane','dequebradinha@danilo.com','65432198712','braco curto','1987/12/04','Aldeia','Aldeia','Barueri','SP','');
('lari','larissa@outlook.com','65432198712','braco curto','1987/12/04','Aldeia','Aldeia','blumenau','sc','');
('leo','leo@gmail.com','65432198712','braco curto','1987/12/04','Aldeia','Aldeia','criciúma','sc','');
('breno','breno@live.com','65432198712','braco curto','1987/12/04','Aldeia','Aldeia','são josé','sc','');
('lucas','lucas@impacta.com','65432198712','braco curto','1987/12/04','Aldeia','Aldeia','lajes','sc','');
('lucas siqueira','lucas@net.com','65432198712','braco curto','1987/12/04','Aldeia','Aldeia','Barueri','SP','');
('vitor','dequebradinha@gmail.com','65432198712','braco curto','1987/12/04','Aldeia','Aldeia','Barueri','SP','');
('sofis','dequebradinha@danilo.com','65432198712','braco curto','1987/12/04','Aldeia','Aldeia','jundiai','SP','');
('marcela','dequebradinha@go.com','65432198712','braco curto','1987/12/04','Aldeia','Aldeia','alphaville','SP','');
('kayna','dequebradinha@sample.com','65432198712','braco curto','1987/12/04','Aldeia','Aldeia','rio grande das serra','SP','');
('andré','dequebradinha@norton.com','65432198712','braco curto','1987/12/04','Aldeia','Aldeia','campinas','SP','');
('immo','dequebradinha@avast.com','65432198712','braco curto','1987/12/04','Aldeia','Aldeia','','SP','');
('tomaz','dequebradinha@use.com','65432198712','braco curto','1987/12/04','Aldeia','Aldeia','Barueri','SP','');
('barbara','dequebradinha@youtube.com','65432198712','braco curto','1987/12/04','Aldeia','Aldeia','sao paulo','SP','');
('igor','dequebradinha@process.com','65432198712','braco curto','1987/12/04','Aldeia','Aldeia','caxias do sul','rs','');
('marry','dequebradinha@vetpet.com','65432198712','braco curto','1987/12/04','Aldeia','Aldeia','canoas','rs','');
('josi','dequebradinha@erp.com','65432198712','braco curto','1987/12/04','Aldeia','Aldeia','Barueri','SP','');

insert into Veterinaria.Procedimento(valor, descricao, nomeProcedimento, "data", idAnimal)

values
('20.00','Banho da LULU','Banho','2018/01/28', '1'),
('100.00','Tosa da LULU','Tosa','2018/01/28', '2'),
('1000.00','Eutanasia da GIGI','Sacrificio','2018/08/15', '3');


insert into Veterinaria.ResponsavelProcedimento(idFuncionario,idProcedimento)
values
('1','1'),
('1','2'),
('2','3');

insert into Veterinaria.Diagnostico(dataDiagnostico, prescricao, diagnostico, idAnimal)

values
('2017/05/15','Descansar','Dor de barriga', '1'),
('2017/04/18','Tomar remedio dee verme','Dor de barriga', 2),
('2017/05/28','Pingar remedio no ouvido','Dor no ouvido', 3);
('2017/04/21','Pingar remedio no ouvido','Dor no ouvido', 3);
('2017/03/22','Pingar remedio no ouvido','Dor no ouvido', 3);
('2017/02/15','Pingar remedio no ouvido','Dor no ouvido', 3);
('2017/01/30','Pingar remedio no ouvido','Dor no ouvido', 3);
('2017/02/20','Pingar remedio no ouvido','Dor no ouvido', 3);
('2017/03/11','Pingar remedio no ouvido','Dor no ouvido', 3);


insert into Veterinaria.Hotel(telefone, dataFimHospedagem, dataInicioHospedagem, observacao, valorDiaria, idFuncionario, idAnimal)

values
('31414104','2018/08/12','2018/08/25', 'Deixou um brinquedo', '200.00', 1, 20),
('41414104','2018/08/13','2018/08/25', 'Deixou um brinquedo', '200.00', 1, 22),
('11414104','2018/08/14','2018/10/22', 'Deixou um brinquedo', '200.00', 1, 23'),
('21414104','2018/08/15','2018/09/23', 'Deixou um brinquedo', '200.00', 1, 24),
('51414104','2018/01/16','2018/02/22', 'Deixou um brinquedo', '200.00', 1, 25),
('61414104','2018/03/17','2018/04/21', 'Deixou um brinquedo', '200.00', 1, 26),
('71414104','2018/04/18','2018/05/21', 'Deixou um brinquedo', '200.00', 1, 27),
('81414104','2018/01/19','2018/02/22', 'Deixou um brinquedo', '200.00', 1, 28),
('92345648','2018/03/11','2018/04/21', 'Deixou um brinquedo', '200.00', 1, 29),
('78945623','2018/04/12','2018/05/22', 'Deixou um brinquedo', '200.00', '1', 30);
('61414104','2018/05/13','2018/06/23', 'Deixou um brinquedo', '200.00', '1', 31),
('51414104','2018/05/14','2018/05/24', 'Deixou um brinquedo', '200.00', '1', 32),
('41414104','2018/03/18','2018/04/22', 'Deixou um brinquedo', '200.00', '1', 33),
('31414104','2018/04/18','2018/05/21', 'Deixou um brinquedo', '200.00', '1', 34),
('21414104','2018/05/18','2018/06/21', 'Deixou um brinquedo', '200.00', '1', 35),
('11414104','2018/01/18','2018/02/23', 'Deixou um brinquedo', '200.00', '1', 36),
('31414104','2018/02/18','2018/03/22', 'Deixou um brinquedo', '200.00', '1', 37),
('41414104','2018/03/18','2018/04/23', "Deixou um brinquedo", '200.00', '1', 38),
('52345648','2018/02/18','2018/03/21', 'Deixou um brinquedo', '200.00', 1, 39),
('68945623','2018/01/18','2018/02/23', 'Deixou um brinquedo', '200.00', 1, 40);

insert into Veterinaria.Agenda(nomeTarefa, nomeAnimal, responsavel, dataHora, motivo, destinatario, endereco)

values
('pegar o cao 1', 'cao 1', 'maria', '2018/08/01', 'Precisa vacinar', 'Maria Candida', 'Rua das ruas, 06 - Bairro dos Bairros - SP'),
('pegar o cao 2', 'cao 2', 'maria', '2018/08/01', 'Precisa vacinar', 'Maria Candida', 'Rua das ruas, 06 - Bairro dos Bairros - SP'),
('pegar o cao 3', 'cao 3', 'maria', '2018/08/01', 'Precisa vacinar', 'Maria Candida', 'Rua das ruas, 06 - Bairro dos Bairros - SP');

insert into Veterinaria.HistoricoDeDoencas(nomeDoenca, descricao, "data", idAnimal)

values
('Catarata','Animal apressentou catarata','2018/10/01', '3'),
('Verme','Animal apressentou verme','2018/10/01', '2'),
('Febre','Animal apressentou febre','2018/10/01', '1');

insert into Veterinaria.TelefoneProprietario(idProprietario,telefone)
values
('1','11 41877428'),
('2','+55 (11) 985867308'),
('3','983479825'),
('3','98347-9825');
