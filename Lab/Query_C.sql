USE SARAVIA

INSERT INTO Customer VALUES ('CTR001', 'Caleb Efesus', 'Male', '2002-01-10','081234567891','Cluster Anggrek,Tangerang')
INSERT INTO Customer VALUES ('CTR002', 'Steven Lim', 'Male', '2002-02-11','081234567892','Cluster Dubai,Banten')
INSERT INTO Customer VALUES ('CTR003', 'Steventius Jonathan', 'Male', '2002-03-12','081234567893','Cluster Palem,Banten')
INSERT INTO Customer VALUES ('CTR004', 'Dodit Didot', 'Male', '2002-04-13','081234567894','Cluster Palem,Banten')
INSERT INTO Customer VALUES ('CTR005', 'Jacob Daniel', 'Male', '2002-05-14','081234567895','Cluster Koki,Jakarta')
INSERT INTO Customer VALUES ('CTR006', 'Daniel Alan', 'Male', '2002-06-15','081234567896','Cluster Bobi,Jakarta')
INSERT INTO Customer VALUES ('CTR007', 'Sasha Grey', 'Female', '2002-07-16','081234567897','Cluster Dani,Banten')
INSERT INTO Customer VALUES ('CTR008', 'Natasha Wilona', 'Female', '2002-08-17','081234567898','Cluster Piala,Banten')
INSERT INTO Customer VALUES ('CTR009', 'Jessica Iskandar', 'Female', '2002-09-18','081234567899','Cluster Diana,Jakarta')
INSERT INTO Customer VALUES ('CTR010', 'Bobiwan Staf', 'Female', '2002-10-19','081234567810','Cluster Dani,Banten')

INSERT INTO Staff VALUES ('STF001', 'Steven Matthew', 'Male', '2002-01-01','081234567891','Cluster Anggrek,Banten',40000000)
INSERT INTO Staff VALUES ('STF002', 'Alan Walker', 'Male', '2002-02-02','081234567892','Cluster Jati,Jakarta',40000000)
INSERT INTO Staff VALUES ('STF003', 'Dono Salim', 'Male', '2002-03-03','081234567893','Cluster Jawa,Banten',40000000)
INSERT INTO Staff VALUES ('STF004', 'Michael Warisal', 'Male', '2002-04-04','081234567894','Cluster Garpu,Banten',40000000)
INSERT INTO Staff VALUES ('STF005', 'Christian Johan', 'Male', '2002-05-05','081234567895','Cluster Sendok,Banten',40000000)
INSERT INTO Staff VALUES ('STF006', 'Joseph Bernardi', 'Male', '2002-06-06','081234567896','Cluster Papan,Jakarta',40000000)
INSERT INTO Staff VALUES ('STF007', 'Bryan Tampubolon', 'Male', '2002-07-07','081234567897','Cluster Piring,Jakarta',40000000)
INSERT INTO Staff VALUES ('STF008', 'Figo Christian', 'Male', '2002-08-08','081234567898','Cluster Sosis,Jakarta',40000000)
INSERT INTO Staff VALUES ('STF009', 'Kezia Alverta', 'Female', '2002-09-09','081234567899','Cluster Ikan,Banten',40000000)
INSERT INTO Staff VALUES ('STF010', 'Prudentia Asuransi', 'Female', '2002-10-10','081234567812','Cluster Ares,Banten',40000000)

INSERT INTO PenMaterial VALUES ('PML001','Plastic',20000,101)
INSERT INTO PenMaterial VALUES ('PML002','Steel',20000,102)
INSERT INTO PenMaterial VALUES ('PML003','Ink',20000,103)
INSERT INTO PenMaterial VALUES ('PML004','Alluminum',20000,104)
INSERT INTO PenMaterial VALUES ('PML005','Iron',30000,105)
INSERT INTO PenMaterial VALUES ('PML006','Reinforced Iron',30000,106)
INSERT INTO PenMaterial VALUES ('PML007','Reinforced Plastic',20000,107)
INSERT INTO PenMaterial VALUES ('PML008','Reinforced Ink',20000,108)
INSERT INTO PenMaterial VALUES ('PML009','Reinforced Alluminum',30000,109)
INSERT INTO PenMaterial VALUES ('PML010','Fiber',20000,110)

INSERT INTO Pen VALUES ('PEN001','Blue Pen','11000','5','PML001')
INSERT INTO Pen VALUES ('PEN002','Red Pen','12000','6','PML002')
INSERT INTO Pen VALUES ('PEN003','Black Pen','13000','7','PML003')
INSERT INTO Pen VALUES ('PEN004','Brown Pen','14000','8','PML004')
INSERT INTO Pen VALUES ('PEN005','Gold Pen','15000','9','PML005')
INSERT INTO Pen VALUES ('PEN006','Green Pen','16000','5','PML006')
INSERT INTO Pen VALUES ('PEN007','Milky Pen','17000','6','PML007')
INSERT INTO Pen VALUES ('PEN008','Light Pen','18000','7','PML008')
INSERT INTO Pen VALUES ('PEN009','Dark Pen','19000','8','PML009')
INSERT INTO Pen VALUES ('PEN010','Silver Pen','20000','5','PML010')

INSERT INTO Vendor VALUES ('VDR001','Indomart','Cluster Alas,Banten','081234567811','indmart@gmail.com')
INSERT INTO Vendor VALUES ('VDR002','Pmart','Cluster Blas,Tangerang','081234567821','pmart@gmail.com')
INSERT INTO Vendor VALUES ('VDR003','Amart','Cluster Clas,Jakarta','081234567831','amart@gmail.com')
INSERT INTO Vendor VALUES ('VDR004','b Industry','Cluster Dlas,Jakarta','081234567841','bmart@gmail.com')
INSERT INTO Vendor VALUES ('VDR005','Cmart','Cluster Elas,Jakarta','081234567851','cmart@gmail.com')
INSERT INTO Vendor VALUES ('VDR006','Dmart','Cluster Flas,Jakarta','081234567861','dmart@gmail.com')
INSERT INTO Vendor VALUES ('VDR007','E Industry','Cluster Glas,Tangerang','081234567871','emart@gmail.com')
INSERT INTO Vendor VALUES ('VDR008','Fmart','Cluster Hlas,Tangerang','081234567881','fmart@gmail.com')
INSERT INTO Vendor VALUES ('VDR009','Gmart','Cluster Ilas,Banten','081234567891','gmart@gmail.com')
INSERT INTO Vendor VALUES ('VDR010','Hmart','Cluster Jlas,Banten','081234567101','hmart@gmail.com')

INSERT INTO Sales VALUES ('SLT001','CTR001','STF001','2020-02-25','Cash',5)
INSERT INTO Sales VALUES ('SLT002','CTR002','STF002','2020-01-20','Cash',5)
INSERT INTO Sales VALUES ('SLT003','CTR003','STF003','2020-02-21','Credit',6)
INSERT INTO Sales VALUES ('SLT004','CTR004','STF004','2020-03-22','Cash', 15)
INSERT INTO Sales VALUES ('SLT005','CTR005','STF005','2020-04-23','Credit',7)
INSERT INTO Sales VALUES ('SLT006','CTR005','STF005','2020-05-26','Cash',7)
INSERT INTO Sales VALUES ('SLT007','CTR007','STF007','2020-06-11','Cash',8)
INSERT INTO Sales VALUES ('SLT008','CTR008','STF008','2020-07-12','Cash',9)
INSERT INTO Sales VALUES ('SLT009','CTR009','STF009','2020-08-13','Credit',10)
INSERT INTO Sales VALUES ('SLT010','CTR010','STF010','2020-09-14','Credit',16)
INSERT INTO Sales VALUES ('SLT011','CTR001','STF001','2020-10-15','Credit',11)
INSERT INTO Sales VALUES ('SLT012','CTR002','STF002','2020-11-16','Credit',12)
INSERT INTO Sales VALUES ('SLT013','CTR003','STF003','2020-10-12','Credit',13)
INSERT INTO Sales VALUES ('SLT014','CTR004','STF004','2020-02-02','Cash',15)
INSERT INTO Sales VALUES ('SLT015','CTR005','STF005','2020-03-03','Cash',16)

INSERT INTO SalesDetail VALUES 
    ('SDT001','SLT001', 'PEN001', 7),
    ('SDT002','SLT002', 'PEN002', 8),
    ('SDT003','SLT003', 'PEN005', 9),
    ('SDT004','SLT005', 'PEN007', 5),
    ('SDT005','SLT007', 'PEN008', 15),
    ('SDT006','SLT008', 'PEN010', 20),
    ('SDT007','SLT010', 'PEN003', 13),
    ('SDT008','SLT011', 'PEN004', 8),
    ('SDT009','SLT012', 'PEN005', 22),
    ('SDT010','SLT013', 'PEN007', 18),
    ('SDT011','SLT001', 'PEN009', 21),
    ('SDT012','SLT015', 'PEN010', 30),
    ('SDT013','SLT014', 'PEN001', 4),
    ('SDT014','SLT003', 'PEN002', 100),
    ('SDT015','SLT007', 'PEN003', 190),
    ('SDT016','SLT004', 'PEN009', 19),
    ('SDT017','SLT009', 'PEN006', 57),
    ('SDT018','SLT010', 'PEN005', 37),
    ('SDT019','SLT008', 'PEN006', 20),
    ('SDT020','SLT005', 'PEN003', 40),
    ('SDT021','SLT007', 'PEN001', 10),
    ('SDT022','SLT003', 'PEN002', 11),
    ('SDT023','SLT002', 'PEN007', 12),
    ('SDT024','SLT010', 'PEN006', 116),
    ('SDT025','SLT001', 'PEN010', 17)

INSERT INTO Purchase VALUES ('PCT001','STF001','2020-01-01','Cash',5)
INSERT INTO Purchase VALUES ('PCT002','STF002','2020-02-02','Credit',3)
INSERT INTO Purchase VALUES ('PCT003','STF003','2020-03-03','Cash',5)
INSERT INTO Purchase VALUES ('PCT004','STF003','2020-04-04','Cash',5)
INSERT INTO Purchase VALUES ('PCT005','STF004','2020-05-05','Credit',5)
INSERT INTO Purchase VALUES ('PCT006','STF004','2020-06-06','Cash',5)
INSERT INTO Purchase VALUES ('PCT007','STF005','2020-06-07','Cash',3)
INSERT INTO Purchase VALUES ('PCT008','STF005','2020-07-08','Credit',5)
INSERT INTO Purchase VALUES ('PCT009','STF006','2020-07-09','Credit',5)
INSERT INTO Purchase VALUES ('PCT010','STF006','2020-07-09','Credit',5)
INSERT INTO Purchase VALUES ('PCT011','STF007','2020-08-11','Credit',5)
INSERT INTO Purchase VALUES ('PCT012','STF007','2020-09-12','Cash',5)
INSERT INTO Purchase VALUES ('PCT013','STF008','2020-02-13','Cash',5)
INSERT INTO Purchase VALUES ('PCT014','STF008','2020-10-14','Credit',5)
INSERT INTO Purchase VALUES ('PCT015','STF009','2020-11-15','Cash',5)

INSERT INTO PurchaseDetail VALUES 
    ('PDL001', 'VDR001', 'PML001','PCT001', 25),
    ('PDL002', 'VDR009', 'PML003','PCT002', 13),
    ('PDL003', 'VDR010', 'PML005','PCT003', 17),
    ('PDL004', 'VDR008', 'PML006','PCT004', 10),
    ('PDL005', 'VDR007', 'PML009','PCT005', 5),
    ('PDL006', 'VDR005', 'PML010','PCT006', 7),
    ('PDL007', 'VDR004', 'PML006','PCT007', 50),
    ('PDL008', 'VDR006', 'PML002','PCT008', 14),
    ('PDL009', 'VDR002', 'PML001','PCT009', 35),
    ('PDL010', 'VDR010', 'PML004','PCT010', 70),
    ('PDL011', 'VDR010', 'PML004','PCT011', 91),
    ('PDL012', 'VDR009', 'PML001','PCT012', 60),
    ('PDL013', 'VDR001', 'PML002','PCT013', 8),
    ('PDL014', 'VDR002', 'PML003','PCT014', 110),
    ('PDL015', 'VDR004', 'PML006','PCT015', 134),
    ('PDL016', 'VDR005', 'PML010','PCT006', 19),
    ('PDL017', 'VDR001', 'PML009','PCT005', 37),
    ('PDL018', 'VDR002', 'PML008','PCT003', 57),
    ('PDL019', 'VDR003', 'PML004','PCT002', 20),
    ('PDL020', 'VDR004', 'PML005','PCT001', 40),
    ('PDL021', 'VDR005', 'PML010','PCT001', 11),
    ('PDL022', 'VDR006', 'PML010','PCT009', 12),
    ('PDL023', 'VDR008', 'PML006','PCT010', 19),
    ('PDL024', 'VDR009', 'PML007','PCT011', 129),
    ('PDL025', 'VDR010', 'PML008','PCT008', 17)


