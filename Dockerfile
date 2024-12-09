# Use the official Python slim image
FROM python:3.9-slim

# Set environment variables
ENV PYTHONUNBUFFERED True
ENV APP_HOME /app
ENV PORT 8080

# Create the working directory
WORKDIR $APP_HOME

# Copy application files
COPY . .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Start the application with Gunicorn
CMD exec gunicorn --bind :$PORT --workers 1 --threads 8 --timeout 0 "app:app"