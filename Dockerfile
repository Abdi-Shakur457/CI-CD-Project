# Stage 1 — Build & test
FROM python:3.11-slim AS builder

WORKDIR /CI-CD-PROJECT

# Install app + dev dependencies
COPY requirements.txt dev-requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt -r dev-requirements.txt

# Copy app code
COPY . .

# Stage 2 — Production
FROM python:3.11-slim AS prod

WORKDIR /CI-CD-PROJECT

# Only copy app code and prod dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
COPY --from=builder /CI-CD-PROJECT .

# Default command
CMD ["python", "my_app.py"]


