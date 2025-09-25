# python version
FROM python:3.13  

# env about terminal
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

# sample dir in docker 
WORKDIR /code

# copy requirements.txt in docker /code dir 
COPY requirements.txt /code/

# set command to install package
RUN pip install -r requirements.txt

# copy file from current path to docker
COPY . /code/

