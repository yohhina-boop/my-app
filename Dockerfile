FROM python:3.13-slim

WORKDIR /app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Копируем всё приложение, включая tests/
COPY . .

EXPOSE 5000

CMD ["python", "main.py"]