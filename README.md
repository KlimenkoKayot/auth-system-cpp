# Система регистрации пользователей
#### C++, Drogon framework, Docker

Система написана на C++20, используется фреймворк [drogon](https://github.com/drogonframework/drogon/)

База данных PostgreSQL в docker контейнере, код закомментирован,<br>
ниже можно увидеть пояснения к обработчикам и схемы авторизации/регистрации.

***

[http://127.0.0.1:8080](http://127.0.0.1:8080) 

Страница с гиперссылками на основную страницу, страницу с регистрацией и входом.

`Доступ для всех пользователей`

***

[http://127.0.0.1:8080/user/openspace](http://127.0.0.1:8080/user/openspace)

Основная страница, вход только для авторизированных пользователей. 

`Доступ только для авторизованных пользователей`

***

[http://127.0.0.1:8080/guest/signin](http://127.0.0.1:8080/guest/signin)

Страница входа на сайт.

`Доступ только для неавторизованных пользователей`

***

[http://127.0.0.1:8080/guest/signup](http://127.0.0.1:8080/guest/signup)

Страница регистрации новых пользователей.

`Доступ только для неавторизованных пользователей`

***

[http://127.0.0.1:8080/guest/signup](http://127.0.0.1:8080/admin/userbase)

Админ-панель с базой данных всех зарегистрированных пользователей.

`Доступ только для администратора`

***

<a href="https://ibb.co/HPwh3s1"><img src="https://i.ibb.co/dpCmxq1/2024-12-06-19-53-01.png" alt="2024-12-06-19-53-01" border="0"></a>

***

Схема регистрации:
1) Получение запроса от пользователя с логином, почтой и паролем
2) Проверка существования логина в базе данных (если существует, то уведомляем пользователя)
3) Валидация пароля (если пароль плохой, то уведомляем пользователя)
4) Хеширование логина и пароля SHA256
5) Добавление нового польователя в базу данных
6) Запуск сессии пользователя
7) Редирект на основную страницу [http://127.0.0.1:8080/user/openspace](http://127.0.0.1:8080/user/openspace)

***

Схема авторизации:
1) Получение запроса от пользователя с логином и паролем
2) Получение SHA256 от данных пользователя
3) Поиск хеша в базе данных (если хеш не найдем, уведомляем пользователя)
4) Запуск сессии пользователя
5) Редирект на основную страницу [http://127.0.0.1:8080/user/openspace](http://127.0.0.1:8080/user/openspace)
