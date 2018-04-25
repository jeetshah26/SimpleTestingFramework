@browser
Feature: Test Feature

  Scenario: I can visit google.com
    When I visit "google.com"
    And I can search for term "GitHub"
    Then I can see the google search results include "GitHub"
