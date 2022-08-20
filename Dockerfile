FROM python:3.9.13-slim-buster

COPY requirements.txt .
RUN pip install -r requirements.txt

COPY . /app
WORKDIR /app

CMD ["python", "-m", "uvicorn", "server:app", "--host", "0.0.0.0", "--port", "8888"]
