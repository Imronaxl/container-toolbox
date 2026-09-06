FROM python:3.12-slim

RUN groupadd --gid 10001 app \
 && useradd  --uid 10001 --gid app --create-home --shell /usr/sbin/nologin app

WORKDIR /app

COPY requirements.txt .
RUN pip install --no-cache-dir --upgrade pip \
 && pip install --no-cache-dir -r requirements.txt

COPY app.py .

ENV APP_PORT=32777
ENV PYTHONUNBUFFERED=1
EXPOSE 32777

USER app

CMD ["gunicorn", "--bind", "0.0.0.0:32777", "--workers", "2", "app:app"]
