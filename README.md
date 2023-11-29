Клонируем репозиторий
```shell
git clone git@github.com:mbgoodguy/employees_catalog.git
```

Переходим в директорию проекта:
```
cd employees_catalog
```

Устанавливаем виртуальное окружение
```
python3 -m venv venv
```

Активируем его
```
source venv/bin/activate
```

Устанавливаем зависимости
```
pip install -r requirements.txt
```

В директории с проектом лежит docker-compose.yml, в котором нужно указать переменные окружения дял подключения к БД.
После указания переменных переходим к сборке.
```shell
docker-compose build
```

Запуск приложения:
```shell
docker-compose up
```
