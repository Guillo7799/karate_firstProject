Feature: Get user on swagger

  Scenario: Get a user created
    Given url "https://petstore.swagger.io/v2/user/" + "7"
    When method get
    Then status 200


