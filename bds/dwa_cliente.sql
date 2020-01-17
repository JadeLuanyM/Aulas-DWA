CREATE TABLE cliente (
  id mediumint(8) unsigned NOT NULL auto_increment,
  foto mediumint default NULL,
  nome varchar(255) default NULL,
  endereco varchar(255) default NULL,
  telefone varchar(100) default NULL,
  PRIMARY KEY (id)
) AUTO_INCREMENT=1;

INSERT INTO cliente (foto,nome,endereco,telefone) VALUES (2,"Caldwell","4366 Augue Rd.","239-4224"),(2,"Levi","994-6600 Vitae Av.","55-891-835-9420"),(1,"Julie","P.O. Box 574, 130 Dui Ave","55-250-704-8039"),(2,"Yolanda","P.O. Box 926, 9511 Ipsum Ave","55-833-477-7849"),(6,"Price","P.O. Box 646, 748 In Street","548-9040"),(6,"Yuli","Ap #495-1705 Hendrerit St.","55-794-253-9270"),(1,"Austin","Ap #893-3443 Lorem Street","55-183-399-7424"),(6,"Aileen","973-7898 Consequat St.","233-7611"),(3,"Olga","223-2120 Malesuada Ave","863-9812"),(8,"Adam","Ap #473-7082 Cursus. Av.","484-2266");
INSERT INTO cliente (foto,nome,endereco,telefone) VALUES (3,"Courtney","P.O. Box 391, 2151 Mauris Rd.","55-786-188-4436"),(4,"Reed","299-5981 Suspendisse Rd.","571-3454"),(3,"Brenden","979 Enim. St.","55-796-706-8627"),(4,"Orson","Ap #493-5688 In Road","55-586-665-1920"),(7,"Montana","P.O. Box 573, 783 Nunc Road","429-2530"),(3,"Jelani","3341 Varius Av.","721-9516"),(3,"Brady","997-5430 Dui Avenue","620-4486"),(3,"Herman","Ap #971-616 Ullamcorper Rd.","403-9173"),(8,"Constance","Ap #745-9546 Integer Rd.","359-8609"),(9,"Kelly","3793 Eu, Street","55-577-700-6867");
INSERT INTO cliente (foto,nome,endereco,telefone) VALUES (5,"Penelope","695-8744 Elementum Av.","55-669-332-2261"),(8,"Echo","P.O. Box 657, 9669 Ullamcorper Av.","774-2233"),(2,"Quinlan","433 Nec, Ave","436-1826"),(2,"Erich","167-1033 Mauris. St.","646-0350"),(6,"Bianca","338-4216 Laoreet Rd.","55-769-295-7480"),(4,"Chantale","Ap #902-1830 Feugiat. Ave","55-513-699-0122"),(9,"Eden","Ap #724-5264 Nunc St.","912-7240"),(9,"Gay","Ap #215-4591 Mi St.","55-201-728-4591"),(5,"Ralph","P.O. Box 658, 7438 Integer St.","55-652-590-2178"),(9,"Kasimir","Ap #187-9552 Diam. Road","151-6221");
