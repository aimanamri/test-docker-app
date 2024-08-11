
# test-docker-app

A simple project on how to set up PySpark with Jupyter notebook. Also, we will be using PosgreSQL server as database and PGAdmin for the interface.

<p align="center">
  <a href="https://github.com/aimanamri/test-docker-app">
    <img alt="GitHub Language Count" src="https://img.shields.io/github/languages/count/aimanamri/test-docker-app">
  </a>

  <a href="https://github.com/aimanamri/test-docker-app">
    <img alt="GitHub Top Language" src="https://img.shields.io/github/languages/top/aimanamri/test-docker-app">
  </a>
  
  <a href="https://github.com/aimanamri/test-docker-app/stargazers">
    <img alt="GitHub Stars" src="https://img.shields.io/github/stars/aimanamri/test-docker-app?style=social">
  </a>

  <a href="https://github.com/aimanamri/test-docker-app/commits/main">
    <img alt="GitHub Last Commit" src="https://img.shields.io/github/last-commit/aimanamri/test-docker-app">
  </a>

  <a href="https://github.com/aimanamri/test-docker-app">
    <img alt="Repository Size" src="https://img.shields.io/github/repo-size/aimanamri/test-docker-app">
  </a>
</p>




## Run Locally

Clone the project

```bash
  git clone https://github.com/aimanamri/test-docker-app.git
```

Go to the project directory

```bash
  cd test-docker-ap/pyspark-de
```
Start the server using Docker

```bash
  docker-compose -f de_env_setup.yaml up -d
```
This project will run on `localhost:80` for PGAdmin and `localhost:8888` for Jupyter notebook.

## Running SQL commands from host
```bash
   docker exec -it notebook sh
```
Then, run following to get token for Jupyter and copy the token into http://localhost:8888.
```bash
jupyter server list
```

## Tech Stack

**Client::** pgadmin

**Coding:** Jupyter notebook with PySpark installed

**Server:** posgresql


## Feedback

If you have any feedback, please open new issue [here](https://github.com/aimanamri/test-docker-app/issues/new).

