@ui
Feature: CMS UI Validation

  Background: 
    * def locator = read('classpath:locators.json');

  @chrome
  Scenario: Happy Path - Chrome
    Given driver uiUrl
    #* driver fullscreen()
    * driver maximize()
    * delay(3000)
    * waitFor(locator.newUserBtn).click()
    * delay(3000)
    * mouse(locator.selectApplicationBtn).click()
    * delay(3000)
    * mouse(locator.bcrsOpt).click()
    * delay(3000)

  @msedge
  Scenario: Happy Path - MSEDGE
    * configure driver = { type: 'msedge', addOptions: ["--remote-allow-origins=*"] }
    Given driver uiUrl
    #* driver fullscreen()
    * driver maximize()
    * delay(3000)
    * waitFor(locator.newUserBtn).click()
    * delay(3000)
    * mouse(locator.selectApplicationBtn).click()
    * delay(3000)
    * mouse(locator.bcrsOpt).click()
    * delay(3000)
    
  @firefox
  Scenario: Happy Path - Fire Fox
    * configure driver = { type: 'geckodriver', executable: 'geckodriver', target: '/Applications/Firefox.app' }
    Given driver uiUrl
    #* driver fullscreen()
    * driver maximize()
    * delay(3000)
    * waitFor(locator.newUserBtn).click()
    * delay(3000)
    * mouse(locator.selectApplicationBtn).click()
    * delay(3000)
    * mouse(locator.bcrsOpt).click()
    * delay(3000)
