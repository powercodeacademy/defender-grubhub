# Defender Grubhub

## Learning Goals

- Building a full CRUD App with a single resource

## Introduction

This lab will practice building out the full MVC for a CRUD app for a single resource

## Setup

As with other labs in this section, there is some starter code in place. To get set up, run:

```console
$ bundle install
```

You can work on this lab by running the tests with `learn test`. You can run the Rails server with:

```console
$ rails s
```

## Instructions

For all the deliverables below, if you use any Rails generators to create models
controllers or views, make sure to use the `--no-test-framework` flag to avoid
overwriting the existing tests.

### Models

Create a `Restaurant` model with the following attributes:

- `name` that is a `string` type
- `description` that is a `string` type
- `city` that is a `string` type
- `star_rating` that is an `integer` type
- `cuisine` that is a `string` type

Your `Restuarant` model should also:

- validate the restaurant's name to ensure that it is **present** and **unique**
  (no two restaurants can have the same name)
- validate the restaurants star_rating is between 1 and 5

Run the migrations after creating your models.

Ensure that the tests for the models are passing before moving forward. To run
the tests for _only_ the model files, run:

```console
$ rspec spec/models
```

### Routes, Views, Controller

Next up is to set up RESTful actions for our restuarants. Build out CRUD for our Restaurant app so we can start serving delicious food! This can be test driven with the following:

```console
$ rspec
```

Good luck and have fun!
