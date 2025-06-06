-- Создание пользователей с ролью organizer (role_id = 3)
INSERT INTO user_account (username, email, password_hash, role_id)
VALUES ('admin1', 'admin1@hikemap.ru', '$2a$10$xJwL5v5Jz5UZJf5U5e5Z/e5e5Z5e5Z5e5Z5e5Z5e5Z5e5Z5e5Z5e', 3),
       ('mountain_king', 'king@hikemap.ru', '$2a$10$yJwL5v5Jz5UZJf5U5e5Z/e5e5Z5e5Z5e5Z5e5Z5e5Z5e5Z5e5Z5e', 3),
       ('trail_blazer', 'blazer@hikemap.ru', '$2a$10$zJwL5v5Jz5UZJf5U5e5Z/e5e5Z5e5Z5e5Z5e5Z5e5Z5e5Z5e5Z5e', 3),
       ('nature_explorer', 'explorer@hikemap.ru', '$2a$10$wJwL5v5Jz5UZJf5U5e5Z/e5e5Z5e5Z5e5Z5e5Z5e5Z5e5Z5e5Z5e', 3),
       ('hike_master', 'master@hikemap.ru', '$2a$10$vJwL5v5Jz5UZJf5U5e5Z/e5e5Z5e5Z5e5Z5e5Z5e5Z5e5Z5e5Z5e', 3),
       ('winter_adventurer', 'winter@hikemap.ru', '$2a$10$vJwL5v5Jz5UZJf5U5e5Z/e5e5Z5e5Z5e5Z5e5Z5e5Z5e5Z5e5Z5e', 3);

-- Создание регионов (Area)
INSERT INTO area (name)
VALUES ('Кавказ'),
       ('Алтай'),
       ('Крым'),
       ('Урал'),
       ('Саяны'),
       ('Хибины');

-- Создание типов походов (HikeType)
INSERT INTO hike_type (name)
VALUES ('Пешеходный'),
       ('Горный'),
       ('Водный'),
       ('Велосипедный'),
       ('Лыжный'),
       ('Коньковый');

-- Создание походов (Hike)
INSERT INTO hike (title, description, start_date, end_date, organizer_id, area_id, is_categorical, difficulty,
                  hike_type_id)
VALUES ('Поход по Кавказским вершинам', 'Маршрут через живописные перевалы Кавказа с ночевками в высокогорных приютах',
        '2024-07-10', '2024-07-20', 5, 1, true, 4, 2),
       ('Алтайские просторы', 'Пеший маршрут по долинам и предгорьям Алтая с посещением озер', '2024-08-05',
        '2024-08-15', 2, 2, false, 3, 1),
       ('Крымская кругосветка', 'Кольцевой маршрут по горному Крыму с видами на Черное море', '2024-05-15',
        '2024-05-25', 3, 3, false, 2, 1),
       ('Уральские хребты', 'Поход по Северному Уралу с восхождением на основные вершины', '2024-06-20', '2024-07-01',
        4, 4, true, 3, 2),
       ('Саянские приключения', 'Комбинированный маршрут с элементами пешего и водного туризма', '2024-07-15',
        '2024-07-30', 5, 5, true, 4, 1),
       ('Хибинская снежная сказка', 'Лыжный переход через Хибинские горы с ночевками в зимних палатках', '2024-03-01',
        '2024-03-10', 6, 6, false, 3, 5),
       ('Кавказские водопады', 'Несложный маршрут к самым красивым водопадам Кавказа', '2024-06-01', '2024-06-05', 4, 1,
        false, 1, 1),
       ('Алтайская велоэкспедиция', 'Велосипедный тур по предгорьям Алтая с преодолением перевалов', '2024-08-20',
        '2024-09-05', 3, 2, true, 4, 4),
       ('Уральская спелеоэкспедиция', 'Исследование пещерных систем Среднего Урала', '2024-09-10', '2024-09-17', 2, 4,
        false, 3, 1),
       ('Крымские каньоны', 'Маршрут по самым живописным каньонам Крымских гор', '2024-06-10', '2024-06-17', 5, 3,
        false, 2, 1);