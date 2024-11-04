##### TELEGRAM user bot



Юзер бот TG подчищающий чаты старше X дней, за исключением папки "Исключения". Используется для рекламных рассылок и всякого скама и цыганщины. 
Написан для себя, не претендует на правду.

Использование:
1) Для начала заполни файл .env (по принципу .env.template)
2) Создай файл сессии, сначала заполни api_id и api_hash (в login.py) (инструкцию читай https://docs.pyrogram.org/start/setup)
- a) можно вне собранного контейнера запустить файл login.py и в консольке ввести требуемые ответы на вопросы. 
- b) можно закомментить "CMD ["python3", "main_script.py"]" в dokcerfile, собрать, зайти в контейнер и достать из конетейнера файл сессии и добавить в корень сюда 

С файолами сессии уже собирать боевой контейнер как надо (раскомменив "CMD ["python3", "main_script.py"]")



Собираем:
``` docker build . -t tg_user_bot:vXX ```
 
 Запускаем:
 ```docker run --name tg_user_bot --restart unless-stopped -d tg_user_bot:vXX```

Запуск без остановки по причине невыполнения ничего внутри:
```docker run --name tg_user_bot --restart unless-stopped -d tg_user_bot:vXX tail -f /dev/null```

