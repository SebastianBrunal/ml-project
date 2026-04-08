<<<<<<< HEAD
FROM python:3.10-slim

WORKDIR /app

COPY . .

ENV PYTHONPATH=/app

RUN pip install --no-cache-dir -r requirements.txt

RUN mkdir -p outputs/metrics outputs/plots

CMD ["python", "main.py"]
=======
FROM python:3.10-slim

WORKDIR /app

COPY . .

ENV PYTHONPATH=/app

RUN pip install --no-cache-dir -r requirements.txt

RUN mkdir -p outputs/metrics outputs/plots

CMD ["python", "main.py"]
>>>>>>> 039376d8fa067fc391fc57bf47d19f81d77820f2
