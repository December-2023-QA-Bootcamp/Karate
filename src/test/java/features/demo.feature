@demo
Feature: Demostration of Java, JS in Karate Framework

  Scenario: Use of Custom Java code
    * def javaUtil = Java.type('util.JavaUtil');
    # static method
    * print javaUtil.getTodaysDate()
    # non-static method
    * def javaUtil = new javaUtil();
    * print javaUtil.getTodaysDateTime()

  Scenario: In-built Java Code
    * def date = Java.type('java.util.Date')
    * print new date()

	@inline-js
  Scenario: In-line JS function
    * def fun =
      """
      	function(x){
      			print('This is the value you have inserted : ' + x);
      	}
      """
    * eval fun(3);
    * eval fun('EnthrallIT');
