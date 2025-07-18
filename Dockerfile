# Use official Python image as base
FROM python:3.11-slim

# Set working directory
WORKDIR /app

# Copy requirements file
COPY requirements.txt .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy project files
COPY . .

# Expose port (change if your app uses a different port)
EXPOSE 8080

# Command to run your app (update as needed, e.g., for FastAPI, Flask, Django)
CMD ["sh", "-c", "streamlit", "run", "app.py", "--server.port=$PORT","--server.address=0.0.0.0"]