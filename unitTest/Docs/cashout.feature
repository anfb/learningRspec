# language: en
# Autor: adriely.nara@gmail.com

Feature: Get cash in the ATM
As a Agile Bank customer I want cash out my money and use it to buy something without credt card.

  @tag1 
  Scenario: cash out in checking account 
    Given the customer have R$ 1000 in their checking account
    When the customer cash out R$ 200
    Then the new customer balance is R$ 800

  @tag2 
  Scenario: cash out in checking account but hasn't balance
    Given the customer have R$ 0 in your checking account
    When the customer cash out R$ 100
    Then the system must to show the mesage "You don't have balance enough"
    And the final balance should be R$ 0

 @tag3 
  Scenario: cash out in checking account but not balace enough 
    Given the customer have R$ 500 in your checking account
    When the customer cash out R$ 510
    Then the system must to show the mesage "You don't have balance enough"
    And the final balance should be R$ 500

 @tag4 
  Scenario: limit cash out in checking account 
    Given the customer have R$ 1000 in your checking account
    When the customer cash out R$ 701
    Then the system must to show the mesage "Sorry, max limite to cash out is R$700"
    And the final balance should be R$ 1000






