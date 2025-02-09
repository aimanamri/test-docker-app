
# PySpark + Jupyter Notebook with PosgreSQL + PGAdmin (Desktop)
A simple project on how to set up PySpark with Jupyter notebook. Also, we will be using PosgreSQL server as database and PGAdmin (Desktop) for the interface.

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
  cd test-docker-ap/data_workspace_dev
```
Start the server using Docker

```bash
  docker-compose -f local-dev-setup.yaml up -d
```
This project will run on `localhost:5433` for PostgreSQL server and `localhost:9999` for Jupyter notebook on your PC.

## Getting token to login into Jupyter notebook
Change Jupyter Notebook Password/Token in `local-dev-setup.yaml`. Default password: `localdevpw`

## Tech Stack
**Client::** pgAdmin (Desktop)
- Hostname/address: `localhost` or `127.0.0.1`
- Port : `5433`
- Username : `user`
- Password : `localdevpw`

**Coding:** Jupyter notebook with PySpark installed.
- pandas, matplotlib, scipy, requests, numpy etc for data processing libraries already installed.
- Need to install both below to connect to PostgreSQL database.
```bash
  pip install psycopg
```
```bash
  pip install psycopg[binary]
```

**Server:** PostgreSQL 17.1


## Feedback

If you have any feedback, please open new issue [here](https://github.com/aimanamri/test-docker-app/issues/new).

