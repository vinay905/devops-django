# Use the official Python image from the Docker Hub
FROM python:3.10-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the requirements file into the container
COPY myproject/requirements.txt .

# Install the dependencies including pytest
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the application code into the container
COPY . .

# Expose port 8000 for the Django app (if applicable)
EXPOSE 8000

# Define the command to run the Django server
CMD ["pytest"]
