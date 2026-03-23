# Stage 1 — Build & test
FROM python:3.11-slim AS builder

WORKDIR /app

COPY requirements.txt dev-requirements.txt /app/

RUN pip install --no-cache-dir -r requirements.txt -r dev-requirements.txt

COPY . .

# Stage 2 — Production
FROM python:3.11-slim AS prod

WORKDIR /app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY --from=builder /app .

CMD ["python", "my_app.py"]
