drop database legendary_games;
CREATE DATABASE legendary_games;
use legendary_games;

CREATE TABLE usuarios (
  usuarios_id INT NOT NULL AUTO_INCREMENT,
  email VARCHAR(45) NOT NULL,
  senha VARCHAR(45) NOT NULL,
  apelido VARCHAR(255) NOT NULL,
  PRIMARY KEY (usuarios_id));

CREATE TABLE pagamentos (
  pagamento_id INT NOT NULL AUTO_INCREMENT,
  forma_pagamento VARCHAR(45) NOT NULL,
  pagamento_data DATETIME NOT NULL,
  reembolso BOOLEAN NOT NULL,
  PRIMARY KEY (pagamento_id));

CREATE TABLE jogos (
  jogos_id INT NOT NULL AUTO_INCREMENT,
  faixa_etaria INT NOT NULL,
  avaliacao FLOAT NOT NULL,
  jogo_nome VARCHAR(255) NOT NULL,
  preco FLOAT NOT NULL,
  pagamentos_pagamento_id INT NOT NULL,
	FOREIGN KEY (pagamentos_pagamento_id)
	REFERENCES pagamentos(pagamento_id),
  PRIMARY KEY (jogos_id));
  
  

CREATE TABLE desenvolvedora (
  desenvolvedora_id INT NOT NULL AUTO_INCREMENT,
  biblioteca_jogos VARCHAR(255) NOT NULL,
  desenvolvedora_nome VARCHAR(255) NOT NULL,
  desenvolvedora_regiao	VARCHAR(255) NOT NULL,
  premiacoes VARCHAR(45),
  PRIMARY KEY (desenvolvedora_id));

CREATE TABLE jogos_has_desenvolvedora (
  jogos_jogos_id INT NOT NULL,
  jogos_usuarios_usuarios_id INT NOT NULL,
  desenvolvedora_desenvolvedora_id INT NOT NULL,
  plataformajogo VARCHAR(45) NOT NULL,
  PRIMARY KEY (jogos_jogos_id, desenvolvedora_desenvolvedora_id),
  FOREIGN KEY (jogos_jogos_id)
  REFERENCES jogos (jogos_id),
  FOREIGN KEY (desenvolvedora_desenvolvedora_id)
  REFERENCES desenvolvedora (desenvolvedora_id));

CREATE TABLE jogos_has_usuarios (
  jogos_jogos_id INT NOT NULL,
  jogos_usuarios_usuarios_id INT NOT NULL,
  usuarios_usuarios_id INT NOT NULL,
  PRIMARY KEY (jogos_jogos_id, usuarios_usuarios_id),
  FOREIGN KEY (jogos_jogos_id)
  REFERENCES jogos (jogos_id),
  FOREIGN KEY (usuarios_usuarios_id)
  REFERENCES usuarios (usuarios_id));
  
insert into pagamentos (forma_pagamento, pagamento_data, reembolso) values ('PayPal', '2019/01/25', false);
	insert into pagamentos (forma_pagamento, pagamento_data, reembolso) values ('Crédito', '2022/08/20', false);
	insert into pagamentos (forma_pagamento, pagamento_data, reembolso) values ('Boleto', '2021/09/26', true);
	insert into pagamentos (forma_pagamento, pagamento_data, reembolso) values ('PayPal', '2019/05/31', false);
	insert into pagamentos (forma_pagamento, pagamento_data, reembolso) values ('Débito', '2019/03/25', true);
	insert into pagamentos (forma_pagamento, pagamento_data, reembolso) values ('Boleto', '2017/01/09', true);
	insert into pagamentos (forma_pagamento, pagamento_data, reembolso) values ('Crédito', '2020/10/06', true);
	insert into pagamentos (forma_pagamento, pagamento_data, reembolso) values ('Pix', '2017/02/03', true);
	insert into pagamentos (forma_pagamento, pagamento_data, reembolso) values ('PayPal', '2020/02/02', false);
	insert into pagamentos (forma_pagamento, pagamento_data, reembolso) values ('Crédito', '2019/03/10', true);
    
insert into usuarios (email, senha, apelido) values ('rfosten0@webeden.co.uk', 'CzXOs3UD5Oaa', 'ebeddie0');
	insert into usuarios (email, senha, apelido) values ('jbrogden1@goodreads.com', 'p7pv6UbSH', 'eforce1');
	insert into usuarios (email, senha, apelido) values ('thardson2@bizjournals.com', 'gU24YP', 'saulton2');
	insert into usuarios (email, senha, apelido) values ('imenier3@newsvine.com', 'C0PKQv3', 'nhaldenby3');
	insert into usuarios (email, senha, apelido) values ('rmoreby4@bing.com', 'rLI08YP2p', 'jdilucia4');
	insert into usuarios (email, senha, apelido) values ('trioch5@geocities.com', '4GxnMe', 'bsmullin5');
	insert into usuarios (email, senha, apelido) values ('lsteckings6@google.pl', 'HAk1ucjjb', 'drodenhurst6');
	insert into usuarios (email, senha, apelido) values ('ejodlkowski7@ustream.tv', 'PWiZy9vfJ', 'ntomowicz7');
	insert into usuarios (email, senha, apelido) values ('atrevithick8@mapy.cz', 'jDqxuU9ivvR', 'cpettwood8');
	insert into usuarios (email, senha, apelido) values ('mpoppy9@samsung.com', 'tjlfIJHXo', 'vcarous9');
    
insert into jogos (faixa_etaria, avaliacao, preco, jogo_nome) values ('14', 0.2, 158.23, 'Tresom');
	insert into jogos (faixa_etaria, avaliacao, preco, jogo_nome) values ('14', 2.6, 360.93, 'Home Ing');
	insert into jogos (faixa_etaria, avaliacao, preco, jogo_nome) values ('10', 3.1, 367.96, 'Matsoft');
	insert into jogos (faixa_etaria, avaliacao, preco, jogo_nome) values ('12', 1.4, 190.21, 'Y-Solowarm');
	insert into jogos (faixa_etaria, avaliacao, preco, jogo_nome) values ('14', 4.5, 380.75, 'Sonsing');
	insert into jogos (faixa_etaria, avaliacao, preco, jogo_nome) values ('0', 3.7, 93.57, 'Flexidy');
	insert into jogos (faixa_etaria, avaliacao, preco, jogo_nome) values ('14', 2.2, 152.04, 'Andalax');
	insert into jogos (faixa_etaria, avaliacao, preco, jogo_nome) values ('12', 4.8, 118.27, 'Z-Solowarm');
	insert into jogos (faixa_etaria, avaliacao, preco, jogo_nome) values ('10', 1.2, 420.73, 'Bytecard');
	insert into jogos (faixa_etaria, avaliacao, preco, jogo_nome) values ('14', 4.4, 134.59, 'Solarbreeze');

insert into desenvolvedora (biblioteca_jogos, desenvolvedora_nome, desenvolvedora_regiao, premiacoes) values ('Andalax', 'Toughjoyfax', 'TZ', 'Best Adaptation');
	insert into desenvolvedora (biblioteca_jogos, desenvolvedora_nome, desenvolvedora_regiao, premiacoes) values ('Ventosanzap', 'Voyatouch', 'PA', 'Best Adaptation');
	insert into desenvolvedora (biblioteca_jogos, desenvolvedora_nome, desenvolvedora_regiao, premiacoes) values ('Duobam', 'Mat Lam Tam', 'CZ', 'Best Adaptation');
	insert into desenvolvedora (biblioteca_jogos, desenvolvedora_nome, desenvolvedora_regiao, premiacoes) values ('Stringtough', 'Domainer', 'AR', 'Best Indie');
	insert into desenvolvedora (biblioteca_jogos, desenvolvedora_nome, desenvolvedora_regiao, premiacoes) values ('Zamit', 'Bigtax', 'AL', null);
	insert into desenvolvedora (biblioteca_jogos, desenvolvedora_nome, desenvolvedora_regiao, premiacoes) values ('Holdlamis', 'Tres-Zap', 'PL', 'Best Narrative');
	insert into desenvolvedora (biblioteca_jogos, desenvolvedora_nome, desenvolvedora_regiao, premiacoes) values ('Sonair', 'Overhold', 'CO', null);
	insert into desenvolvedora (biblioteca_jogos, desenvolvedora_nome, desenvolvedora_regiao, premiacoes) values ('Holdlamis', 'Bigtax', 'ID', 'Best Adaptation');
	insert into desenvolvedora (biblioteca_jogos, desenvolvedora_nome, desenvolvedora_regiao, premiacoes) values ('Rank', 'Greenlam', 'RU', 'Best Adaptation');
	insert into desenvolvedora (biblioteca_jogos, desenvolvedora_nome, desenvolvedora_regiao, premiacoes) values ('Prodder', 'Flowdesk', 'RU', null);
    
update usuarios set senha = 'HAk1ucjjb', apelido = 'cpettwood8' where usuarios_id = 18;
	update usuarios set senha = 'tjlfIJHXo', apelido = 'ntomowicz7' where usuarios_id = 2348;
    update usuarios set senha = 'jDqxuU9ivvR', apelido = 'vcarous9' where usuarios_id = 88345;
    update usuarios set senha = '4GxnMe', apelido = 'drodenhurst6' where usuarios_id = 7772;
    update usuarios set senha = 'CzXOs3UD5Oaa', apelido = 'eforce1' where usuarios_id = 92471;
    
update pagamentos set forma_pagamento = 'Crédito', reembolso = false where pagamento_id = 9934;
	update pagamentos set forma_pagamento = 'Débito', reembolso = false where pagamento_id = 88233;
    update pagamentos set forma_pagamento = 'Pix', reembolso = false where pagamento_id = 956;
    update pagamentos set forma_pagamento = 'Débito', reembolso = true where pagamento_id = 13473;
    update pagamentos set forma_pagamento = 'PayPal', reembolso = false where pagamento_id = 23775;
    
update desenvolvedora set biblioteca_jogos = 'Holdlamis', desenvolvedora_regiao = 'CZ' where desenvolvedora_id = 64;
	update desenvolvedora set biblioteca_jogos = 'Sonair', desenvolvedora_regiao = 'US' where desenvolvedora_id = 324;
    update desenvolvedora set biblioteca_jogos = 'Andalax', desenvolvedora_regiao = 'BR' where desenvolvedora_id = 84;
    update desenvolvedora set biblioteca_jogos = 'Ventosanzap', desenvolvedora_regiao = 'UK' where desenvolvedora_id = 29;
    update desenvolvedora set biblioteca_jogos = 'Zamit', desenvolvedora_regiao = 'JP' where desenvolvedora_id = 1108;
    
update jogos set avaliacao = 4.8, preco = 420.73 where jogos_id = 726;
	update jogos set avaliacao = 3.9, preco = 65.91 where jogos_id = 9993;
    update jogos set avaliacao = 3.8, preco = 10.00 where jogos_id = 52;
    update jogos set avaliacao = 2.0, preco = 43.98 where jogos_id = 635;
    update jogos set avaliacao = 4.1, preco = 2.50 where jogos_id = 8245;
    
delete from usuarios where usuarios_id = 8933;
	delete from usuarios where usuarios_id = 4327;
    delete from usuarios where usuarios_id = 99182;
    delete from usuarios where usuarios_id = 716;
    delete from usuarios where usuarios_id = 11827;
    
delete from jogos where jogos_id = 6938;
	delete from jogos where jogos_id = 183;
    delete from jogos where jogos_id = 23647;
    delete from jogos where jogos_id = 3615;
    delete from jogos where jogos_id = 26352;
    
delete from desenvolvedora where desenvolvedora_id = '52';
	delete from desenvolvedora where desenvolvedora_id = '1244';
    delete from desenvolvedora where desenvolvedora_id = '2321';
    delete from desenvolvedora where desenvolvedora_id = '8848';
    delete from desenvolvedora where desenvolvedora_id = '14562';

delete from pagamentos where pagamento_id = '747623';
	delete from pagamentos where pagamento_id = '384712';
	delete from pagamentos where pagamento_id = '47772';
	delete from pagamentos where pagamento_id = '124353';
	delete from pagamentos where pagamento_id = '2277713';

select * from pagamentos order by pagamento_data ASC;
	select * from jogos order by jogos_id ASC;
    select * from usuarios order by apelido ASC;
    select * from desenvolvedora order by premiacoes ASC;
    select * from pagamentos order by forma_pagamento ASC;
    
select reembolso from pagamentos where pagamento_id = 65182;
	select apelido from usuarios where usuarios_id = 377126;
	select desenvolvedora_regiao from desenvolvedora where desenvolvedora_id = 2112;
	select premiacoes from desenvolvedora where desenvolvedora_id = 772;
	select avaliacao from jogos where jogos_id = 4732;
    
select * from jogos inner join desenvolvedora on jogos.jogos_id = desenvolvedora.desenvolvedora_id;
	select jogos.jogos_id from jogos inner join desenvolvedora on jogos.jogos_id = desenvolvedora.desenvolvedora_id;
    select * from usuarios left join jogos on usuarios.usuarios_id = jogos.jogos_id;
    select * from usuarios left join jogos on usuarios.usuarios_id = jogos.jogos_id where usuarios.usuarios_id is null;
    select * from jogos left join usuarios on jogos.jogos_id = usuarios.usuarios_id;