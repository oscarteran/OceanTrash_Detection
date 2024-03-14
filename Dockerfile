#Dockerfile

# Using image of uvicorn and gunicorn 
FROM tiangolo/uvicorn-gunicorn-fastapi:python3.8

# Establish folder directory
WORKDIR /app

# Copy content of application to container
COPY ./app /app

# Copy requirements.txt files
COPY ./requirements.txt requirements.txt  

# Update pip version
RUN pip install --upgrade pip

# Install dependecies of application
RUN pip install -r requirements.txt

# Expose port available in app
EXPOSE 10000

# Command to execute app
CMD [ "uvicorn", "main:app", "--host", "0.0.0.0", "--port", "10000", "--reload"]