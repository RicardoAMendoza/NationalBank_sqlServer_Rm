 
 -- spserver_save_admin
 EXEC [dbo].[spserver_save_admin] 
 @aidadmin  = 0,
 @aname = 'Andy',
 @alastName = 'Garcia',
 @aemail = 'garcia@teccart.qc.ca',
 @aimg = 'andy.png',
 @apassword = 'sql'
 
  EXEC [dbo].[spserver_save_admin] 
 @aidadmin  = 2,
 @aname = 'Ricardo',
 @alastName = 'Mendoza',
 @aemail = 'omnimtv@gmail.com',
 @aimg = 'ricardo.png',
 @apassword = 'omni'
 
  EXEC [dbo].[spserver_save_admin] 
 @aidadmin  = 3,
 @aname = 'Ricker',
 @alastName = 'Alcindor',
 @aemail = 'rickers@teccart.qc.ca',
 @aimg = 'rickers.png',
 @apassword = 'database'
 
 -- spserver_save_directoragencie
 EXEC [dbo].[spserver_save_directoragencie] 
 @aidtdirectorAgencie  = 0,
 @aname = 'Patrick',
 @alastName = 'Dorre',
 @aemail = 'dorre@teccart.qc.ca',
 @aimg = 'dorre.png',
 @asalary = 4000.220000
 
  EXEC [dbo].[spserver_save_directoragencie] 
 @aidtdirectorAgencie  = 0,
 @aname = 'Fernand',
 @alastName = 'Bikatal-Bi-Tonye',
 @aemail = 'fernand@gmail.com',
 @aimg = 'fernand.png',
 @asalary = 1000.330000
 
  EXEC [dbo].[spserver_save_directoragencie] 
 @aidtdirectorAgencie  = 0,
 @aname = 'Richard',
 @alastName = 'Saint-Vingt-Cent',
 @aemail = 'richard@teccart.qc.ca',
 @aimg = 'richard.png',
 @asalary = 600.990000
 
 -- spserver_save_bank
 EXEC [dbo].[spserver_save_bank] 
 @aidbank  = 0,
 @aname = 'National Bank',
 @acapital = 500000,
 @aaddress = '3030 Hochelaga'
 
 -- spserver_save_agencies
 EXEC [dbo].[spserver_save_agencies] 
 @aidagencies = 0,
 @aagencyNumber = 'A1A1',
 @aname = 'Rosemont NB',
 @aaddress = '2727 Rosemont',
 @aidbank = 3,
 @aidtdirectorAgencie = 1
 
 EXEC [dbo].[spserver_save_agencies] 
 @aidagencies = 0,
 @aagencyNumber = 'A2A2',
 @aname = 'MontRoyal NB',
 @aaddress = '3131 MontRoyal',
 @aidbank = 3,
 @aidtdirectorAgencie = 2
 
 EXEC [dbo].[spserver_save_agencies] 
 @aidagencies = 0,
 @aagencyNumber = 'A3A3',
 @aname = 'Beaubien NB',
 @aaddress = '247 Beaubien',
 @aidbank = 3,
 @aidtdirectorAgencie = 3
 
  EXEC [dbo].[spserver_save_agencies] 
 @aidagencies = 0,
 @aagencyNumber = 'A4A4',
 @aname = 'Alexander NB',
 @aaddress = '456 Alexander',
 @aidbank = 3,
 @aidtdirectorAgencie = 2

 -- spserver_save_employee
 EXEC [dbo].[spserver_save_employee] 
 @aidemployee  = 0,
 @aemployeeNumber  = 'E1E1',
 @aname  = 'Juan',
 @alastName = 'Zamanego',
 @aemail  = 'zamanego@gamil.com',
 @aimg  = 'zamanego.png',
 @ahiringDate  = '2017-02-23',
 @aidagencies  = 6
 
 EXEC [dbo].[spserver_save_employee] 
 @aidemployee  = 0,
 @aemployeeNumber  = 'E3E3',
 @aname  = 'Cesar',
 @alastName = 'Silva',
 @aemail  = 'cesar@gmail.com',
 @aimg  = 'silva.png',
 @ahiringDate  = '2014-09-19',
 @aidagencies  = 6
 
 EXEC [dbo].[spserver_save_employee] 
 @aidemployee  = 0,
 @aemployeeNumber  = 'E4E4',
 @aname  = 'Ana',
 @alastName = 'Fernandez',
 @aemail  = 'fernandez@gmail.com',
 @aimg  = 'fernandez.png',
 @ahiringDate  = '2013-11-15',
 @aidagencies  = 6
 
 EXEC [dbo].[spserver_save_employee] 
 @aidemployee  = 0,
 @aemployeeNumber  = 'E2E2',
 @aname  = 'Rauoul',
 @alastName = 'Nguiya',
 @aemail  = 'raoul@gmail.com',
 @aimg  = 'nguiya.png',
 @ahiringDate  = '2013-03-23',
 @aidagencies  = 7
 
 EXEC [dbo].[spserver_save_employee] 
 @aidemployee  = 0,
 @aemployeeNumber  = 'E5E5',
 @aname  = 'Maria',
 @alastName = 'Houda',
 @aemail  = 'maria@google.com',
 @aimg  = 'houda.png',
 @ahiringDate  = '2012-01-01',
 @aidagencies  = 7
 
 EXEC [dbo].[spserver_save_employee] 
 @aidemployee  = 0,
 @aemployeeNumber  = 'E6E6',
 @aname  = 'Maria',
 @alastName = 'Arteaga',
 @aemail  = 'arteaga@gmail.com',
 @aimg  = 'arteaga.png',
 @ahiringDate  = '2011-02-03',
 @aidagencies  = 7
 
 EXEC [dbo].[spserver_save_employee] 
 @aidemployee  = 0,
 @aemployeeNumber  = 'E7E7',
 @aname  = 'Maria',
 @alastName = 'Madany',
 @aemail  = 'madany@google.com',
 @aimg  = 'madany.png',
 @ahiringDate  = '2015-08-10',
 @aidagencies  = 8
 
 EXEC [dbo].[spserver_save_employee] 
 @aidemployee  = 0,
 @aemployeeNumber  = 'E8E8',
 @aname  = 'Roseely',
 @alastName = 'Brand',
 @aemail  = 'brand@gmail.com',
 @aimg  = 'brand.png',
 @ahiringDate  = '2012-05-13',
 @aidagencies  = 8
 
  EXEC [dbo].[spserver_save_employee] 
 @aidemployee  = 0,
 @aemployeeNumber  = 'E10E10',
 @aname  = 'Esmeralda',
 @alastName = 'Mafogue',
 @aemail  = 'esmeralda@gmail.com',
 @aimg  = 'mafogue.png',
 @ahiringDate  = '2000-09-02',
 @aidagencies  = 8
 
 EXEC [dbo].[spserver_save_employee] 
 @aidemployee  = 0,
 @aemployeeNumber  = 'E9E9',
 @aname  = 'Silvayn',
 @alastName = 'Trudeau',
 @aemail  = 'trudeau@gmail.com',
 @aimg  = 'trudeau.png',
 @ahiringDate  = '2012-04-21',
 @aidagencies  = 9
 
 EXEC [dbo].[spserver_save_employee] 
 @aidemployee  = 0,
 @aemployeeNumber  = 'E11E11',
 @aname  = 'Brack',
 @alastName = 'Obama',
 @aemail  = 'obama@gamil.com',
 @aimg  = 'brand.png',
 @ahiringDate  = '1999-01-12',
 @aidagencies  = 9
 
  EXEC [dbo].[spserver_save_employee] 
 @aidemployee  = 0,
 @aemployeeNumber  = 'E12E12',
 @aname  = 'Benoit',
 @alastName = 'Fracoise',
 @aemail  = 'benoit@gmail.com',
 @aimg  = 'francoise.png',
 @ahiringDate  = '1998-04-03',
 @aidagencies  = 9
 
 
 
 
 
 
 
 -- spserver_save_client
 exec spserver_save_client
@aidclient = 0,
@aclientNumber  = 'C1C1',
@aname  = 'Bill',
@alastName  = 'Gates',
@aemail  = 'gates@microsoft.com',
@aimg  = 'gates.png',
@aaddress  = '3540 Masson',
@acardNumber = '123456',
@anip  = 'windows',
@aidagencies  = 6,
@aidemployee = 1

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 