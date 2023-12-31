% Определение сотрудников и их участия в мероприятиях
участник("Александра", "Стритбол", "Ж").
участник("Владимир", "Мини-футбол", "М").
участник("Владимир", "Троеборье", "М").
участник("Владислав", "Стритбол", "М").
участник("Владислав", "Мини-футбол", "М").
участник("Андрей", "Мини-футбол", "М").
участник("Марина", "Стритбол", "Ж").
участник("Марина", "Троеборье", "Ж").
участник("Сергей", "Мини-футбол", "М").
участник("Сергей", "Троеборье", "М").
участник("Максим", "Мини-футбол", "М").
участник("Оксана", "Стритбол", "Ж").
участник("Оксана", "Троеборье", "Ж").

% Правила для формирования команд
состав_команды_женщины(Мероприятие, Состав) :-
    findall(Имя, (участник(Имя, Мероприятие, "Ж")), Состав),
    length(Состав, Длина),
    Длина >= 2.

состав_команды_мужчины(Мероприятие, Состав) :-
    findall(Имя, (участник(Имя, Мероприятие, "М")), Состав),
    length(Состав, Длина),
    (
        (Мероприятие = "Мини-футбол", Длина >= 5);
        (Мероприятие = "Стритбол", Длина >= 3);
        (Мероприятие = "Троеборье", Длина >= 2)
    ).

