USE gest_contratos;

INSERT INTO ugr VALUES (1	, 'SGP'		, 'Secretaria de Gestao de Pessoas'			);
INSERT INTO ugr VALUES (2	, 'STIC'	, 'Secretaria de Tecnologia'				);
INSERT INTO ugr VALUES (3	, 'SAO'		, 'Secretaria de Administração e Orçamento'	);

INSERT INTO fiscal VALUES (111, 'Thiago de Oliveira'		, 'F');
INSERT INTO fiscal VALUES (222, 'Filipe Viana Monteiro'		, 'M');
INSERT INTO fiscal VALUES (333, 'Giuliard Cosmo Rodrigues'	, 'M');

INSERT INTO contrato VALUES (1, '2019-08-08', '2020-08-08', 102043		, 1	, 333);
INSERT INTO contrato VALUES (2, '2019-10-10', '2020-10-10', 105143		, 1	, 222);
INSERT INTO contrato VALUES (3, '2019-09-09', '2020-09-09', 2048		, 2	, 111);
INSERT INTO contrato VALUES (4, '2019-11-11', '2020-11-11', 2543		, 3	, 111);

INSERT INTO localidade VALUES ('SEDE', 'SEDE'				);
INSERT INTO localidade VALUES ('COJE', 'COJE'				);
INSERT INTO localidade VALUES ('ZN01', '1a ZONA ELEITORAL'	);
INSERT INTO localidade VALUES ('ZN02', '2a ZONA ELEITORAL'	);
INSERT INTO localidade VALUES ('ZN03', '3a ZONA ELEITORAL'	);

INSERT INTO tipo_despesa VALUES ('CNP' , 'Consumo na ponta'  			, 'KWh'	);
INSERT INTO tipo_despesa VALUES ('CFP' , 'Consumo fora da ponta'  		, 'KWh'	);
INSERT INTO tipo_despesa VALUES ('CIP' , 'Contrib. Ilumicao publica'  	, ''	);
INSERT INTO tipo_despesa VALUES ('LMP' , 'Limpeza'  					, 'HH'	);

INSERT INTO fatura VALUES (122, '2019-08-01', 1);
INSERT INTO fatura VALUES (123, '2019-09-01', 1);
INSERT INTO fatura VALUES (211, '2019-07-01', 2);
INSERT INTO fatura VALUES (212, '2019-07-01', 2);

INSERT INTO item_de_despesa VALUES ('Considerar', 12.50		, 10	, 122, 'CNP', 'SEDE');
INSERT INTO item_de_despesa VALUES ('Considerar', 1.50		, 11	, 122, 'CIP', 'SEDE');
INSERT INTO item_de_despesa VALUES ('Considerar', 1200.50	, 11	, 122, 'CFP', 'SEDE');
INSERT INTO item_de_despesa VALUES ('Considerar', 145.50	, 11	, 122, 'CNP', 'ZN01');
INSERT INTO item_de_despesa VALUES ('Considerar', 1.50		, 1 	, 122, 'CIP', 'ZN01');
INSERT INTO item_de_despesa VALUES ('Considerar', 1245.50	, 16	, 123, 'CNP', 'SEDE');
INSERT INTO item_de_despesa VALUES ('Considerar', 1.50		, 11	, 123, 'CIP', 'SEDE');

INSERT INTO item_de_despesa VALUES ('Considerar', 1200.50		, 100	, 211, 'LMP', 'SEDE');
INSERT INTO item_de_despesa VALUES ('Considerar', 180.50		, 30	, 211, 'LMP', 'COJE');
INSERT INTO item_de_despesa VALUES ('Considerar', 120.50		, 12	, 211, 'LMP', 'ZN03');
INSERT INTO item_de_despesa VALUES ('Considerar', 140.50		, 15	, 211, 'LMP', 'ZN02');
INSERT INTO item_de_despesa VALUES ('Considerar', 300.50		, 40	, 211, 'LMP', 'ZN01');

INSERT INTO item_de_despesa VALUES ('Considerar', 1400.50		, 120	, 212, 'LMP', 'SEDE');
INSERT INTO item_de_despesa VALUES ('Considerar', 240.50		, 25	, 212, 'LMP', 'COJE');
INSERT INTO item_de_despesa VALUES ('Considerar', 112.50		, 13	, 212, 'LMP', 'ZN03');
INSERT INTO item_de_despesa VALUES ('Considerar', 400.50		, 40	, 212, 'LMP', 'ZN02');
INSERT INTO item_de_despesa VALUES ('Considerar', 601.50		, 80	, 212, 'LMP', 'ZN01');
