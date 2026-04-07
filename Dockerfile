FROM python:3.13-slim

WORKDIR /app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Копируем все папки и файлы
COPY app/ ./app/
COPY tests/ ./tests/
COPY main.py .

EXPOSE 5000

CMD ["python", "main.py"]