
# test-docker-app

A simple project on how to set up MySQL database with Docker with phpmyadmin as client interface.

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


## Environment Variables

To run this project, you will need to add the following environment variables to your .env file

`MYSQL_DATABASE`

`MYSQL_ROOT_PASSWORD`

`MYSQL_USER`

`MYSQL_PASSWORD`


## Run Locally

Clone the project

```bash
  git clone https://github.com/aimanamri/test-docker-app.git
```

Go to the project directory

```bash
  cd test-docker-app
```
Start the server using Docker

```bash
  docker-compose up -d
```
This project will run on `localhost:8001` for phpmyadmin and `localhost:80` for simple webpage.

## Running SQL commands from host
```bash
   docker exec -it sql_container bash -l
```
Replace `sql_container` with your MySQL Docker container ID.

## Tech Stack

**Client:** phymyadmin, php

**Server:** mysql


## Feedback

If you have any feedback, please open new issue [here](https://github.com/aimanamri/test-docker-app/issues/new).

