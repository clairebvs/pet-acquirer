# MyPetAcquirer - README

## Introduction

MyPetAcquirer is a rails monolith web application that helps you find your new companion based on various filters. If you are a pet lover this application is for you as it will allow to see different pet picture and search for a pet based on your search.

## Initial Setup

Clone this repo using SSH or HTTP and run ``` bundle ```.
You will also need to get an api key for the PetFinder api. Use figaro to hide it in an application.yml file and set the key equal to ``` pet_api_key ```.

## Running Tests

To run the test suite, once you have followed the Initial Setup rubric, run ``` rspec ``` and you will be able to see the test coverage.

## How to use

When being on the home page, you can click the search button and start to search for your future pet. Only the location and animal are required field. The location must be either a valid zip code or a state and a city.

## Stack used

Ruby 2.4.1  
Rails 5.1.6.1  
CircleCI  
Heroku  
Faraday  
Figaro  
HTML5  
CSS3  

## Known Issues

* Add styling for desktop users. I implemented first the styling of a mobile app as it is easier to transition from mobile to desktop than the contrary.

## How to Contribute

Look at the opened issue and create a branch after cloning down the repo (see Initial Setup above).

## Core Contributors

[Claire Beauvais Lightner](https://github.com/clairebvs)

## Schema Design

No schema has been used for this application.

## The Application 

![Alt text](/../master/app/assets/images/home_page.png?raw=true "Optional Title")

![Alt text](/../master/app/assets/images/pet_form.png?raw=true "Optional Title")

![Alt text](/../master/app/assets/images/pet_search_result.png?raw=true "Optional Title")
