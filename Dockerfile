#Dockerfile

# Using image of uvicorn and gunicorn 
FROM tiangolo/uvicorn-gunicorn-fastapi:python3.8

# Establish folder directory
WORKDIR /app

# Copy content of application to container
COPY ./app /app

# Install dependecies of application
RUN pip install -r requirements.txt

# Expose port available in app
EXPOSE 8080

# Command to execute app
CMD [ "uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8080", "--reload"]