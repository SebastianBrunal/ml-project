# Usamos Python 3.10 slim
FROM python:3.10-slim

# Directorio de trabajo
WORKDIR /app

# Copiamos requirements.txt y luego instalamos
COPY requirements.txt .

# Instalamos dependencias
RUN pip install --no-cache-dir -r requirements.txt

# Copiamos el código
COPY src/ ./src
COPY main.py .

# Creamos directorios de salida
RUN mkdir -p outputs/metrics outputs/plots