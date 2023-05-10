|FR id|TC id|Опис кроків тестового сценарію|Опис очікуваних результатів|
|:-:|:-:|:-|:-:|
|FR2.2|TC1.1|Початкові умови: відсутні <br> Кроки сценарію: <br> 1) competition_date = today/future <br> 2) number_of_participants >= 0|Результат = 1|
|FR2.2|TC1.2|Початкові умови: відсутні <br> Кроки сценарію: <br> 1) competition_date = past <br> 2) number_of_participants >= 0|Результат = -1|
|FR2.2|TC1.3|Початкові умови: відсутні <br> Кроки сценарію: <br> 1) competition_date = today/future <br> 2) number_of_participants < 0|Результат = -1|
|FR2.2|TC1.4|Початкові умови: відсутнє Internet-з'єднання <br> Кроки сценарію: <br> 1) competition_date = today/future <br> 2) number_of_participants >= 0|Результат = -1|
