-- Створення таблиць 

CREATE TABLE user_sportsman ( --користувач-спортсмен
 	user_id INT, --id користувача
 	user_name VARCHAR(50), --ім'я користувача
 	phone VARCHAR(20) --номер мобільного телефону користувача
);

CREATE TABLE user_trainer ( --користувач-тренер
  user_id INT, --id користувача
  trainer_id INT --id тренера
);

CREATE TABLE chat ( --чат
    chat_id INT, --id чату
    user_id INT, --id користувача
    admin_id INT --id адміна
);

CREATE TABLE tr_group ( --персональна група тренера
    tr_group_id INT, --id групи
    trainer_id INT, --id тренера
    user_id INT --id спортсмена
) 

CREATE TABLE competition ( --змагання
    competition_id INT, --id змагань
    competition_date DATE, --дата змагань
    competition_name VARCHAR(50), --назва змагань
    competition_place VARCHAR(50), --місце проведення змагань
    sport VARCHAR(50), --вид спорту
    number_of_participants INT --кількість учасників
)

CREATE TABLE ticket ( --квиток на змагання
    competition_id INT, --id змагань
    user_id INT, --id користувача
    ticket_id INT --id квитка
)

--Обмеження первиних ключів 
ALTER TABLE user_sportsman ADD CONSTRAINT sp_pk
PRIMARY KEY (user_id);
ALTER TABLE user_trainer ADD CONSTRAINT tr_pk
PRIMARY KEY (trainer_id);
ALTER TABLE chat ADD CONSTRAINT chat_pk
PRIMARY KEY (chat_id);
ALTER TABLE tr_group ADD CONSTRAINT group_pk
PRIMARY KEY (tr_group_id);
ALTER TABLE competition ADD CONSTRAINT competition_pk
PRIMARY KEY (competition_id);
ALTER TABLE ticket ADD CONSTRAINT ticket_pk
PRIMARY KEY (ticket_id);

-- Обмеження зовнішніх ключів 
ALTER TABLE user_trainer ADD CONSTRAINT tr_fk
FOREIGN KEY (trainer_id)
REFERENCES user_sportsman(user_id);
ALTER TABLE chat ADD CONSTRAINT chat_admin_fk
FOREIGN KEY (admin_id)
REFERENCES user_sportsman(user_id);
ALTER TABLE chat ADD CONSTRAINT chat_user_fk
FOREIGN KEY (user_id)
REFERENCES user_sportsman(user_id);
ALTER TABLE tr_group ADD CONSTRAINT group_admin_fk
FOREIGN KEY (trainer_id)
REFERENCES user_trainer(trainer_id);
ALTER TABLE tr_group ADD CONSTRAINT group_user_fk
FOREIGN KEY (user_id)
REFERENCES user_sportsman(user_id);
ALTER TABLE ticket ADD CONSTRAINT ticket_user_fk
FOREIGN KEY (user_id)
REFERENCES user_sportsman(user_id);
ALTER TABLE ticket ADD CONSTRAINT ticket_comp_fk
FOREIGN KEY (competition_id)
REFERENCES competition(competition_id);
