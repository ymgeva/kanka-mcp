FROM python:3.11-slim

# Set working directory
WORKDIR /app

# Copy project files
COPY . .

# Install dependencies
RUN pip install --no-cache-dir requests mcp[cli]

# Set environment variables
ENV PYTHONUNBUFFERED=1

# Run the application
CMD ["python", "kanka_mcp.py"]
