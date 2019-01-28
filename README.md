# Snote
<a href="https://codeclimate.com/github/codeclimate/codeclimate/maintainability"><img src="https://api.codeclimate.com/v1/badges/a99a88d28ad37a79dbf6/maintainability" /></a>
<br/>

Snote is a simple web app to take notes, built using Ruby on Rails.

## Getting Started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes.

### Prerequisites

What things you need to install the software and how to install them:

- [Docker](https://docs.docker.com/)

### Setup

#### 1. Clone the repository

```
git clone git@github.com:ananthkamath/snote.git && cd snote
```

#### 2. Build the project

```
docker-compose build
```

#### 3. Copy the env files

```
cp .env.example .env.development.local
```

#### 4. Start the app

```
docker-compose run
```

#### 5. Run the migrations

```
docker exec -it snote_app_1 bundle exec rake db:migrate
```

## To Access The App
[Snote](http://localhost:3000/)

## To Run The Tests

You can run all the specs using the following command:

```
docker exec -it snote_app_1 rspec .
```

If you want to run a single spec, use the following pattern:

```
docker exec -it snote_app_1 rspec spec/controllers/notes_controller_spec.rb
```

## To Access The Logs

You can check the development logs using the following command:

```
docker exec -it snote_app_1 tail -f log/development.log
```

## Built Using

- [Ruby on Rails](https://rubyonrails.org/) - The web framework used to build the app
- [Docker](https://www.docker.com/) - Used to containerize the app
- [MySQL](https://dev.mysql.com/) - The database used to store the data

## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details
