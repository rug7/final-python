# use Python's base image from python
FROM python:3.9-slim

# set working directory
WORKDIR /app

# copy requirements.txt  
COPY requirements.txt .

# Install Python dependencies
RUN pip install --no-cache-dir -r requirements.txt

# copy all project files into the container
COPY . .

#expose port 5000 to access the app
EXPOSE 5000

# set the command to run the app when the container starts
CMD ["python", "app.py"]