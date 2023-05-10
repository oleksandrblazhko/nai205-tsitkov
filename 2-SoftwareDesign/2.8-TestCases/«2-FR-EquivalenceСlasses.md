
|Опис вхідних умов|Правильний/неправильний <br> клас еквівалентності|Опис значень вхідних даних|
|:-|:-:|:-|
|1) рядок competition_date має поточну або майбутню дату; <br> 2) рядок number_of_participants має значення "0" або більше;|Правильний|competition_date = today/future <br> number_of_participants >= 0|
|1) рядок competition_date не має поточну або майбутню дату; <br> 2) рядок number_of_participants має значення "0" або більше;|Неправильний|competition_date = past <br> number_of_participants >= 0|
|1) рядок competition_date має поточну або майбутню дату; <br> 2) рядок number_of_participants не має значення "0" або більше; |Неправильний|competition_date = today/future <br> number_of_participants < 0|
