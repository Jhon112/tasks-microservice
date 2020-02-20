# Tasks API

## Description

This Directory contains API files and documenation

## Environment

* __OS:__ Ubuntu 14.04 LTS
* __language:__ Ruby 2.6.5
* __database:__ postgresql

`

## SETUP PROJECT

### Install app dependencies:
```
bundle install
```

### Setup pre-commit gem
```
pre-commit install
```

### Create Database
```
rake db:create
```

### Migrate

```
rake db:migrate
```

## Testing API

* Execute program:

```
bundle exec rails s
```

* Testing from CLI:

```
curl -X GET http://0.0.0.0:3000/api/v1/[YOUR API REQUEST]
```

example:
```
curl -X GET http://0.0.0.0:3000/api/v1/tasks/:user_id
``