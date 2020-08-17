Feature: For Sale Property Search
  As a customer
  I want the ability to search for any properties for sale
  So that I can review the property before I buy

  Scenario Outline: Customer can search for any property
    Given I navigate to rightmove homepage
    When I enter "<Location>" into the search field
    And I click on For sale button
    And I select "<Radius>" from the Search radius dropdown
    And I select "<MinPrice>" from the Min Price range dropdown
    And I select "<MaxPrice>" from the Max Price range dropdown
    And I select "<MinBed>" from the Min No. of bedrooms dropdown
    And I select "<MaxBed>" from the Max No. of bedrooms dropdown
    And I select "<Property>" from Property type dropdown
    And I select  "<Period>" from Added to site dropdown
    And I click on Find properties button
    Then search result page is displayed with relevant results

    Examples:
    |Location|Radius          |MinPrice  |MaxPrice  |MinBed  |MaxBed  |Property         |Period     |
    |Salford, Greater Manchester|Within 5 miles  |120,000   |200,000   |2       |4       |Houses           |Last 7 days|
    |M5 3NS  |Within 10 miles |80,000    |150,000   |1       |2       |Flats /Apartments|Last 3 days|
    |Rochdale Station|Within 3 miles|180,000|300,000|3       |4       |Houses           |Last 14 days|
    |M5              |Within 20 miles |120,000 |250,000|2     |5      |Bungalows        |Last 14 days |


  Scenario: Customer cannot search for empty location
    Given I navigate to rightmove homepage
    When I enter "" into the search field
    And I click on For sale button
    Then a popup window is displayed to enter area,postcode or train station


  Scenario: Customer gets error page for invalid location
    Given I navigate to rightmove homepage
    When I enter "ggggggggg" into the search field
    And I click on For sale button
    Then an error page is displayed