# Use the official Python image
FROM python:3.10-alpine

# Set the working directory inside the container
WORKDIR /app

COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt  
# Copy all project files to the container
COPY . /app/

# Install dependencies
WORKDIR /app/babyshop_app

RUN python manage.py makemigrations
RUN python manage.py migrate

EXPOSE 8025

ENTRYPOINT ["python", "manage.py", "runserver", "0.0.0.0:8025"]