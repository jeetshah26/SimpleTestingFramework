@browser
Feature: Sample Tests for Jstor

  Scenario Outline: The Footer links redirect me to the correct url
    When I visit "firefly.jstor.org"
    And I select the footer link "<link_text>"
    Then I verify that I am redirected to the url "<expected_url>"
    Examples:
      | link_text           | expected_url                             |
      | About JSTOR         | https://about.jstor.org/                 |
      | Mission and History | https://about.jstor.org/mission-history/ |
      | What's in JSTOR     | https://about.jstor.org/whats-in-jstor/  |
      | Get JSTOR           | https://about.jstor.org/get-jstor/       |
      | News                | https://about.jstor.org/news/            |
      | Events              | https://about.jstor.org/events/          |


  Scenario: I can search for a book chapter and navigate to chapter view
    When I visit "firefly.jstor.org"
    And I search for "Vampire History"
    And I select the "Vampire History" in the search results
    Then I can view the chapter view for "Vampire History" with the book name "Vampire Legends in Contemporary American Culture: What Becomes a Legend Most" by "University Press of Kentucky"

  Scenario: I can browse by subject