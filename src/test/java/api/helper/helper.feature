@exclude
Feature: Helper feature

  @get-users-helper
  Scenario: Call getUsers API helper
    Given url baseUrl
    And path constant.users
    When method GET
    * def status = responseStatus
    * def response = response

  @get-user-helper
  Scenario: Call getUser API helper
    Given url baseUrl
    And path constant.getUser + id
    When method GET
    * def status = responseStatus
    * def response = response
