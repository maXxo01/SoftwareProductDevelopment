### Запуск PostgreSQL у Docker-контейнері

#### Крок 1. Завантаження образу
docker pull postgres

#### Крок 2. Запуск контейнера
docker run ^
 --name steblynskyi-postgres ^
 -p 5455:5432 ^
 -e POSTGRES_PASSWORD=1234 ^
 -v %cd%:/scripts ^
 -d postgres

#### Крок 3. Підключення до контейнера
docker exec -it steblynskyi-postgres bash

#### Крок 4. Створення бази даних
createdb lab6db -U postgres

#### Крок 5. Ініціалізація БД
psql -U postgres -d lab6db < /scripts/db_init.sql
