# Mini-RAG

This is a minimal implementation of the RAG model for question answering.

## Requirements

- Python 3.8 or later

#### Install Dependencies
```bash
sudo apt update
sudo apt install libpq-dev gcc python3-dev
```

#### Install Python using MiniConda

1) Download and install MiniConda from [here](https://docs.anaconda.com/free/miniconda/#quick-command-line-install)
2) Create a new environment using the following command:
```bash
$ conda create -n mini-rag python=3.8
```
3) Activate the environment:
```bash
$ conda activate mini-rag
```

### (Optional) Setup your command line for bettter readability

```bash
export PS1="\[\033[01;32m\]\u@\h:\w\n\[\033[00m\]\$ "
``` 

## Installation

### Install the required packages

```bash
$ pip install -r requirements.txt
```

### Setup the enviroment variabels

```bash
$ cp .env.example .env
```

Set your enviroment variabels in the `.env` file. Like `OPENAI_API_KEY` value.


## Run Docer Compose Services

```bash
$ cd docker
$ cp .env.example .env
```

- update `.env` with your credentials


## Run the FastAPI server

```bash
$ uvicorn main:app --reload --host 0.0.0.0 --port 5000
```

# Celery (Development Mode)

For development, you can run Celery services manually instead of using Docker:

To Run the **Celery worker**, you need to run the following command in a separate terminal:

```bash
$ python -m celery -A celery_app worker --queues=default,file_processing,data_indexing --loglevel=info
```

To run the **Beat scheduler**, you can run the following command in a separate terminal:

```bash
$ python -m celery -A celery_app beat --loglevel=info
```

To Run **Flower Dashboard**, you can run the following command in a separate terminal:

```bash
$ python -m celery -A celery_app flower --conf=flowerconfig.py
```


open your browser and go to `http://localhost:5555` to see the dashboard.


## POSTMAN Collection

Download the POSTMAN collection from [/assests/mini-rag-app.postman_collection.json](/assests/mini-rag-app.postman_collection.json)