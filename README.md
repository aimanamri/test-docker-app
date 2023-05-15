
# test-docker-app

A simple project on how to set up MySQL database with Docker with phpmyadmin as client interface.



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

## Tech Stack

**Client:** phymyadmin, php

**Server:** mysql


## Feedback

If you have any feedback, please open new issue [here](https://github.com/aimanamri/test-docker-app/issues/new).

