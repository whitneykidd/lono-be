# Lono: Group Project

### Contributors
* __Madeleine Halle__ (GitHub: [madhalle](https://github.com/madhalle))
* __Whitney Kidd__ (GitHub: [whitneykidd](https://github.com/whitneykidd))

## Abstract
Lono API is the back end API for [Lono](https://lono-fertility.herokuapp.com/), a birth control tool for women who follow the fertility awareness method (natural birth control). A user logging in for the first time is prompted to submit the profile form, so the app can start tracking their high risk and low risk days. Once their profile information has been logged, a user can start tracking their daily basal body temperature along with any symptoms they might be having that day. After filling out today's entry, a user can then view whether today is a high risk day or not. The user can also see their historical data through a color coded calendar, or she can view reports that will display her temperature over the past 7 or 30 days.

## Endpoints
 *https://lono-fertility.herokuapp.com/api/v1/days  
      - POST {temperature(float), date(string), name(string)}
      - GET 
      ```
      {
        "id": 1,
        "date": "08/01/2020",
        "temperature": 97.3921407225235,
        "high_risk": false,
        "created_at": "2020-09-16T21:09:38.668Z",
        "updated_at": "2020-09-16T21:09:38.668Z",
        "user_id": 1,
        "ovulating": false
      }
      ```
 *https://lono-fertility.herokuapp.com/api/v1/user_data  
      - POST {name(string), avg_cycle(int), avg_period(int), start_date(string)}
      - GET 
      ```
      {
        "id": 1,
        "start_date": "10/01/2020",
        "avg_period": 5,
        "avg_cycle": 30,
        "created_at": "2020-09-16T21:09:38.597Z",
        "updated_at": "2020-09-16T21:09:38.597Z",
        "day_of_ovulation": "14",
        "name": "billie"
      }
      ```


## Learning Goals
* Create and maintain an agile process
* Implement Travis CI
* Deploy to Heroku
* Testing above 90%

## Setup

View the deployed application [here](https://lono-api.herokuapp.com/api/v1/days)

—OR—

`$ git clone [file path name]`

`$ cd lono-be`

`$ bundle install`

`$ rails s`


## Wins
- Pivoting from a Python/Flask project to Ruby/Rails to get a working product
- Huge growth in debugging knowledge
- Long, unexpected hours of productive struggle while learning a new language

## Future Iterations..
- Complete and deploy the project with Python/Flask
- Connect product to bluetooth thermometer for automatic data input

## Technologies Used
- Ruby on Rails
- PostgreSQL
- Rspec

## Systems/Practices
- git/Version Control
- Project Board
- TDD
