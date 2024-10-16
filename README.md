docker image build . --tag=a1:1.1.6
docker run -d -p 4444:8000 a1:1.1.6
docker ps
docker exec -it ba82b207ab23 bash
В контейнере команды:
python manage.py makemigrations
python manage.py migrate
Вышли из контейнера.
Вписываем адрес в requests.http
@baseUrl = http://localhost:4444/api
Отправляем запросы
Проверка переменных окружения (последниз вапрос в файле requests.http): 
GET {{baseUrl}}/greetings/
Content-Type: application/json



