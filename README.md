# Bleat

### The Project

Our first small group project, using TDD, daily pair-programming and Agile principles (daily stand-ups, GitHub Project Board (Kanban-style), GitHub collaboration, feedback and end-of-day retrospectives.)

### Task specification
Use Rails to build a clone of __[Yelp ](https://www.yelp.com/)__, an app for reviewing restaurants.  
__Yelp__ is a popular web application that allows users to rate and review restaurants, and find other diner's ratings and comments.  

### Objectives

* Creating Rails applications
* The structure of Rails apps (MVC, the router, helpers)  
* TDD in Rails, with RSpec & Capybara  
* Associations  
* Validations  
* AJAX in Rails  

### Using the Bleat app

Clone the repository:
```
git clone https://github.com/AttyC/bleat

cd bleat
```
Run bundle to install dependencies:
```
bundle
```

```
bin/rake db:create
bin/rake db:migrate
```
Launch server with
```
bin/rails server
```

View and interact with the app at [http://localhost:3000/](http://localhost:3000/).

### Run the tests

```
rspec
```

### Dependencies
Rails version 5.1.5  
sqlite3 database

gem 'puma', '~> 3.7'  
gem 'sass-rails', '~> 5.0'  
gem 'uglifier', '>= 1.3.0'  
gem 'devise'  
gem 'coffee-rails', '~> 4.2'  
gem 'turbolinks', '~> 5'  
gem 'jbuilder', '~> 2.5'  
gem 'capybara', '~> 2.13'  
gem "database_cleaner"  
gem 'rspec-rails'  
gem 'selenium-webdriver'  

### Approach

We took a very methodical approach to learn the Rails conventions and followed the conventions ad documentation.

### With more time  

Set limits on users  
Log in through Facebook, Twitter, Github or another external service  
Enable image upload

### Collaborators
Phil Bugden, Ed Litten, Alex Sergides, Roland Vink
