TELEGRAM user bot



Юзер бот TG подчищающий чаты старше X дней, за исключением папки "Исключения". Используется для рекламных рассылок и всякого скама и цыганщины. 
Написан для себя, не претендует на правду.

Использование:
Первый заупуск - заполни файл .env (по принципу .env.template) 
                 создание файла сессии: заполни api_id и api_hash (инструкцию читай https://docs.pyrogram.org/start/setup)
                                        a) можно вне собранного контейнера запустить файл login.py и в консольке ввести требуемые ответы на вопросы. 
                                        b) можно закомментить "CMD ["python3", "main_script.py"]" в dokcerfile, собрать, зайти в контейнер и достать из конетейнера файл сессии и добавить в корень сюда
                 после уже запускать как надо (раскомменив "CMD ["python3", "main_script.py"]")



... docker build . -t tg_user_bot:vXX
... После сборки запускать коммандой docker run --name tg_user_bot --restart unless-stopped -d tg_user_bot:vXX

Запуск без остановки по причине невыполнения ничего внутри - tail -f /dev/null


