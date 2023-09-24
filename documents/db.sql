CREATE TABLE public.ports (
	id bigserial NOT NULL,
	"name" varchar(255) NOT NULL,
	capacity int4 NOT NULL,
	CONSTRAINT port_pk PRIMARY KEY (id)
);

CREATE TABLE public.ships (
	id bigserial NOT NULL,
	"name" varchar(255) NOT NULL,
	port_id int8 NULL,
	status varchar(255) NOT NULL,
	CONSTRAINT ship_pk PRIMARY KEY (id),
	CONSTRAINT ship_fk_port FOREIGN KEY (port_id) REFERENCES ports(id)
);

CREATE TABLE public.mariners (
	id bigserial NOT NULL,
	firstname varchar(255) NOT NULL,
	lastname varchar(255) NOT NULL,
	ship_id int8 NULL,
	status varchar(255) NOT NULL,
	CONSTRAINT mariner_pk PRIMARY KEY (id),
	CONSTRAINT mariner_fk_ship FOREIGN KEY (ship_id) REFERENCES ships(id)
);

INSERT INTO public.ports ("name",capacity) VALUES
	 ('Дальний',5),
	 ('Солнечный',10),
	 ('Восточный',7);

INSERT INTO public.ships ("name",port_id,status) VALUES
	 ('Проворный',1,'PORT'),
	 ('Санта Мария',1,'PORT'),
	 ('Туман',1,'PORT'),
	 ('Буря',1,'PORT'),
	 ('Сказочный',1,'PORT'),
	 ('Грозный',2,'PORT'),
	 ('Восток',2,'PORT'),
	 ('Кудесник',3,'PORT'),
	 ('Арктика',NULL,'SEA'),
	 ('Москва',3,'PORT');

INSERT INTO public.mariners (firstname, lastname, ship_id, status) VALUES
   	 ('Иван','Первухин',1,'SAILOR'),
   	 ('Степан','Кузнецов',1,'CAPITAN'),
   	 ('Роман','Абрамов',2,'SAILOR'),
   	 ('Владимир','Конюхов',2,'SAILOR'),
   	 ('Александр','Воронин',2,'CAPITAN'),
   	 ('Николай','Беликов',3,'SAILOR'),
   	 ('Никита','Попов',3,'SAILOR'),
   	 ('Алексей','Федоров',3,'CAPITAN'),
   	 ('Филипп','Киряев',4,'SAILOR'),
   	 ('Борис','Вертухаев',4,'CAPITAN'),
   	 ('Виталий','Кривоногов',5,'SAILOR'),
   	 ('Вадим','Петров',5,'SAILOR'),
   	 ('Ростислав','Иванов',6,'CAPITAN'),
   	 ('Виталий','Павлов',6,'SAILOR'),
   	 ('Кирилл','Андреев',7,'SAILOR'),
   	 ('Архип','Карпов',7,'CAPITAN'),
   	 ('Петр','Романов',8,'SAILOR');