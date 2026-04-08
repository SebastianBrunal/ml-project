# Usamos Python 3.10 slim como base ligera
FROM python:3.10-slim

# Establecemos el directorio de trabajo dentro del contenedor
WORKDIR /app

# Copiamos los archivos necesarios
COPY requirements.txt .
COPY src/ ./src
COPY main.py .

# Creamos carpetas para outputs
RUN mkdir -p outputs/metrics outputs/plots

# Instalamos dependencias de Python
RUN pip install --no-cache-dir -r requirements.txt

# Comando por defecto al ejecutar el contenedor
CMD ["python", "main.py"]