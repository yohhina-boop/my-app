FROM python:3.13-slim

WORKDIR /app

# Копируем requirements.txt и устанавливаем зависимости
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Копируем все файлы приложения
COPY main.py .
COPY app/ ./app/

EXPOSE 5000

# Запускаем main.py
CMD ["python", "main.py"]