# Use the official Ubuntu image
FROM ubuntu:20.04

# Set environment variables to non-interactive mode (prevents prompts during installation)
ENV DEBIAN_FRONTEND=noninteractive

# Install dependencies
RUN apt-get update && apt-get install -y \
    python3 \
    python3-pip \
    python3-dev \
    curl

# Install FastAPI and Uvicorn
RUN pip3 install fastapi uvicorn

# Create a directory for the app
WORKDIR /app

# Copy the app code into the container
COPY ./main.py /app

# Expose the port the app will run on
EXPOSE 8000

# Run the FastAPI app with Uvicorn
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]