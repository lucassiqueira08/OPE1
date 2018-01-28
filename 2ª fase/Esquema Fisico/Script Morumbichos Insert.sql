
use Morumbichos;
go

insert into Veterinaria.Animal (nome,peso,sexo,cor,numMicrochip,especie,observacao,dataNasc, raca)

values

('Meg','3.0','Feminino','Bege','1234','Cachorro','Não come peixe','2014/05/01','Vira lata'),
('Rex','50.0','Masculino','Preto','54321','Cachorro','Alergico a dipirona','2010/04/05','Dalmata'),
('Danilo','0.50','Masculino','Amarelo','445618','Ave','Braços curtos','2015/05/06','Calopsita');


insert into Veterinaria.Funcionario(nome, apelido, cpf, dataNasc, cargo, situacao)

values

('Lucas','Lucas 155','12345678910','1999/08/23','zelador','ativo'),
('Bruno','Bruno 157','12345678911','1997/08/17','veterinario','ativo'),
('Matheus','Matheus chave','12345678955','1998/06/07','recepcionista','demitido');


insert into Veterinaria.Proprietario(nome,email,cpf,observacao, dataNasc, logradouro, bairro, cidade, estado, cep)

values
('Lucas Araujo','araujinho@157.com','11987654321','Mau pagador','2000/05/11','Rua das casas','Bairro dos bairros','São Paulo','SP',''),
('Vitor Crecre','crepaldi@carlessi.com','12345678912','','1987/05/08','Freguesia do Ó','Freguesia do Ó','Freguesia do Ó','SP',''),
('Danilo','dequebradinha@danilo.com','65432198712','braco curto','1987/12/04','Aldeia','Aldeia','Barueri','SP','');

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
('2017/05/18','Tomar remedio dee verme','Dor de barriga', '2'),
('2017/05/25','Pingar remedio no ouvido','Dor no ouvido', '3');


insert into Veterinaria.Hotel(telefone, dataFimHospedagem, dataInicioHospedagem, observacao, valorDiaria, idFuncionario, idAnimal)

values
('41414104','2018/08/18','2018/08/25', 'Deixou um brinquedo', '200.00', '1', '2'),
('12345648','2018/08/18','2018/08/25', 'Deixou um brinquedo', '200.00', '1', '3'),
('78945623','2018/08/18','2018/08/25', 'Deixou um brinquedo', '200.00', '1', '1');


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