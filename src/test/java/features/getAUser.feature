@get-user-api
Feature: GET User API Endpoint Validation

  Background: 
  	# * def constant = callonce read('classpath:util/constant.js')
  	* def userId = 3

  Scenario: Happy Path
    # url is a reserve keyword for karate to define url
    # Given url 'https://reqres.in/'
    Given url baseUrl
    # path is a reserve keyword to define endpoint resources
    And path constant.getUser + userId
    # method referes as HTTP Method to CALL GET/POST/PUT/DELETE
    When method GET
    # status will validate the statuscode
    Then status 200
    # response is a in-built variable which will contain response
    * print response
    # def to define variable or function. JsonPath (response.data.email)
    * def email = response.data.email
    * print email
    * assert email == 'emma.wong@reqres.in'
