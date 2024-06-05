@get-user-api
Feature: GET User API Endpoint Validation

  Background: 
    # Calling once to cache the js file values inside
    # * def constant = callonce read('classpath:util/constant.js')
    # url is a reserve keyword for karate to define url
    # Given url 'https://reqres.in/'
    Given url baseUrl
    # * def schema = {data: {id: '#number',email: '#string',first_name: '#string',last_name: '#string',avatar: '#string'},support: {url: '#string',text: '#string'}}
    * def schema = schema.getUserSchema
    # Calling another feature with tags
    * def helper = call read('classpath:api/helper/helper.feature@get-users-helper')

  Scenario Outline: Happy Path : user ID - <user_id>
    # path is a reserve keyword to define endpoint resources
    And path constant.getUser + <user_id>
    # method referes as HTTP Method to CALL GET/POST/PUT/DELETE
    When method GET
    # status will validate the statuscode
    Then status 200
    # response is a in-built variable which will contain response
    * print response
    # def to define variable or function. JsonPath (response.data.email)
    * def email = response.data.email
    * print email
    * assert email == <user_email>
    # Response schema validation
    * match response == schema

    Examples: 
      | user_id | user_email                 |
      |       5 | 'charles.morris@reqres.in' |
      |       6 | 'tracey.ramos@reqres.in'   |
      |       2 | 'janet.weaver@reqres.in'   |

  @call-feature
  Scenario Outline: Happy Path and vlaidate from getUsers
    * def user = <user_id>
    
    # First API Call GetUsers
    * def getUsers = helper.response
    * print getUsers
    * def user_email = getUsers.data[user-1].email
    
    # Second API GetUser
    And path constant.getUser + user
    When method GET
    Then status 200
    * def email = response.data.email
    * assert email == user_email
    * match response == schema
    Examples:
    |user_id|
    |3|
    |6|
    |4|
