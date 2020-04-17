[![CircleCI](https://circleci.com/gh/jwoodrow99/web615-final-assignment.svg?style=shield&circle-token=3aa262e2c5586ac325a13dbff4bf015d92fd7f1a)](https://circleci.com/gh/jwoodrow99/web615-final-assignment)

# WEB615-final-assignment

Author: [Jack Woodrow](https://github.com/jwoodrow99)

## Description
The purpose of this project is to demonstrate new technology in conjunction with the ruby language and the rails MVC framework. This project had us demonstrate and use several technologies such as RSPEC, Pundit, Docker, and CircleCI. This project is designed to get us familiar with several new technologies and programming concepts. We have built on a basic rails application in order to add subscripts, publications, tests, and route authorization in order to make a basic web app to display user content. We have included the implementation of a docker container for development and using the CircleCI tool for continuous integration.

## Technologies

**Docker** is used as our development environment. We have used docker in our project because a docker container is highly portable and allows for the application to run on any system with the use of their software without any configuration change. The configuration is in a docker file and docker-compose file, which can be ran identically regardless of the host machine. This allows for a high level of portability and, low overhead for the development environment.

**RSPEC** is a testing library for rails that has a high level of integration. RSPEC has the ability to scaffold tests as different controllers and models are scaffolded within the rails application. RSPEC takes allot of the work out of writing test for you, as well as giving extremely human readable syntax, and page interaction.

**Pundit** is a library that helps you build extremely useful, scalable, and robust authentication systems for ruby. We used this library to implement user authentication with role based authorization with our application.

**Heroku** is an open cloud service which allows for you to host your code as well as deploy your application to a live web server for testing. Heroku also has a high level of integration with other services such as CirclCI for continuous deployment to Heroku.

**CirleCI** is a web service for continuous development and continuous integration. The service is used to watch a code repo and work as a middle wear in order to watch the repo and deploy new code to your production environment, in our case Heroku. This service allows for you to configure how your application gets deployed to production to put in safeguards as to how it gets pushed and the processes required to get it up and running.

## Setup

A setup file has been included in our project in the bin folder called setup. In order to get the project running or your machine you must first have all of the required software installed.

1. Install Docker
	* [Docker - Windows](https://docs.docker.com/docker-for-windows/install/)
	* [Docker - Mac](https://docs.docker.com/docker-for-mac/install/)
2. [Install RVM (Ruby Version Manager)](https://rvm.io/rvm/install)
3. Install Ruby
```
rvm install ruby-2.6
rvm use ruby-2.6
```
4. Install Rails
```
gem install rails -v 5.2.1
```
5. [Install PostgreSQL](https://www.postgresql.org/download/)
6. Clone the repo onto your local machiene
7. Open a terminal at the root of the project
8. Run the command (setup script preferred)
```
bin/setup
```
OR
```
gem install bundler --conservative
bundle install
docker-compose up --build
```
