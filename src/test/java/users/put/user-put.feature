Feature: Put user on Swagger

  Scenario: Put a user
    Given url "https://petstore.swagger.io/v2/user/" + "7"
    And request { "username": "GalesDev", "email": "gales@dev.com" }
    When method put
    Then status 200
    And match $.name == 'GalesDev'