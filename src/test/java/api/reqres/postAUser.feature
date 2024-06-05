@post-a-user
Feature: POST User API Validation

  Background: 
    Given url baseUrl
    And path constant.users
    * def schema = schema.postUserSchema
    * def body = read('classpath:postUser.json')
    # Passing params for another feature
    * def helper = call read('classpath:api/helper/helper.feature@get-user-helper'){id:3}
  	# When you need to pass more than one params
  	# {id:3, name:'john'}
  
  Scenario: Happy Path
    # inline body
    # * def body = {name:'Nasir', job:'QA'}
    * set body.name = 'Alif Hamza'
    * set body.job = 'Manager'
    When request body
    And method POST
    Then status 201
    And match response == schema
    * print helper.response
    * print helper.status
