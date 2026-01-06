FROM python:3.10-slim

# System updates and git installation
RUN apt-get update && apt-get install -y git && rm -rf /var/lib/apt/lists/*

# Working directory setup
WORKDIR /bot
COPY requirements.txt .

# Installing python libraries
RUN pip install --no-cache-dir -U pip && \
    pip install --no-cache-dir -r requirements.txt

# Copying all files
COPY . .

# Start command
CMD ["python3", "bot.py"]

