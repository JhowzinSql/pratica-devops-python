# Imagem base Python
FROM python:3.9-slim

# Define variáveis de ambiente para o banco
ENV MYSQL_HOST=db

ENV MYSQL_USER=appuser

ENV MYSQL_PASSWORD=senha123

ENV MYSQL_DATABASE=appdb

# Diretório de trabalho

WORKDIR /app

# Copia os arquivos necessários
COPY requirements.txt .
COPY app.py .

# Instala dependências
RUN pip install -- no-cache-dir -r requirements.txt

# Volume para logs (opcional)

VOLUME /app/logs

# Comando de execução

CMD ["python", "app.py"]