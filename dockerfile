FROM mcr.microsoft.com/devcontainers/python:3.11-bullseye
ENV PYTHONUNBUFFERED=1 PIP_NO_CACHE_DIR=1
WORKDIR /app

# Copy requirements first (replace path if your requirements.txt lives elsewhere)
COPY requirements.txt /app/requirements.txt
RUN pip install --upgrade pip && pip install -r requirements.txt

# Playwright browsers (Chromium) with system deps
RUN python -m playwright install --with-deps chromium

# Copy the rest
COPY . /app/

# Writable logs dir (we’ll optionally mount Azure Files here later)
RUN mkdir -p /app/logs

# Start your worker (adjust if your entry point differs)
CMD ["python", "run_rankzen.py"]
