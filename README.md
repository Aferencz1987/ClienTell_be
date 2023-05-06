# README

This is the backend portion of the ClienTell application. I am currently in the process of changing over from Heroku to Render so the application is not functioning. As I fix ClienTell, the configuration details that follow will change.

  - Alex Ferencz [Linkedin](https://www.linkedin.com/in/alex-ferencz/)

* App gem versions:
  - Ruby 3.2.1
  - Rails 5.2.6
  - Puma 3.11
  - Graphql 1.12.15
  - Graphql-rails 1.8.0

* Configuration:
 - Fork the project and clone down a local copy.
 - Run bundle install to install gems

* Database creation:
  - rails db:create
  - rails db:migrate
  - rails db:seeds

* How to run the test suite:
  - Run `rails graphql:schema:dump` in the terminal to create a schema dump
  - Run bundle exec rspec to run the test suite

* Deployment:
  - [Back-end deployment](https://date-em-rate-em-be.herokuapp.com/graphql) 
  - [Front-end deployment](https://clientell.netlify.app/)
  - [Front-end repo](https://github.com/Aferencz1987/ClienTell-fe)

* Wiki for GraphQL queries and mutations 
 - [JSON contracts](https://date-em-rate-em.slite.com/) and other useful information.

* Cors Whitelist:
  - 'https://clientell.netlify.app/'
