FROM ubuntu:22.04

# Install Python3 and pip3
RUN apt-get update && \
    apt-get install -y python3 python3-pip && \
    pip3 install flask && \
    rm -rf /var/lib/apt/lists/*

# Set working directory
WORKDIR /app

# Copy application code
COPY app.py .

# Expose Flask port
EXPOSE 7860

# Run the app
CMD ["python3", "app.py"]
