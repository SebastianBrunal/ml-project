FROM python:3.10-slim

WORKDIR /app

COPY . .

RUN pip install --no-cache-dir -r requirements.txt

RUN mkdir -p outputs/metrics outputs/plots

CMD ["python", "main.py"]