# Deliverability API

## Description

This was created as a small assessment.  It is a small Rails JSON API which helps test whether text messages are being sent or dropped by a carrier.  

## Tech

### Requirements

- Ruby 2.5.8
- Rails 6.1.0
- PostgreSQL 12.4+

### Usage

#### To run the server:

    bundle install
    rake db:create
    rake db:migrate
    rails s
    
App should then run on localhost:3000
    
#### To run testing: 

    bundle install
    rake db:create
    RAILS_ENV=test rake db:migrate
    rspec
 
 ### Notable Gems
 
 - RSpec
 - Shoulda-matchers
 - Factorybot
 - Faker
 - Pry-rails
 - phonelib
 
 ## Considerations
 
 This application is incomplete.  It should function properly, however there is a bit to do in terms of testing.  Some Rails conventions have not been implemented, such as `strong params`.  Model validations could be focused on to clean up the controller.  Most importantly, FactoryBot should be further explored to build proper tests which account for the dynamically generated `uuid`s generated for the `device_id` used as arguments for several endpoints.  

This is literally my first Rails app though, and served as a great learning tool.  Despite difficulty in finding documentation, I think Rails is an excellent and powerful backend tool.  Hopefully by completing this application I can build a strong Rails foundation and utilize Rails as backend in the future.
