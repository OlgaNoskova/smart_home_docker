FROM python:3.11-alpine
RUN apk add --no-cache gcc musl-dev linux-headers
RUN apk update && apk add --no-cache bash
# EXPOSE 5050
COPY ./requirements.txt ./requirements.txt
RUN pip install --upgrade pip
RUN pip install --no-cache-dir --upgrade -r requirements.txt
WORKDIR /src
ENV MY_ENV=netology_15_10
COPY . .
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]