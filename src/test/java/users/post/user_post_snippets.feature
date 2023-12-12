@ignore
Feature: Reusable data-scenarios for post-create a user

@Create
  Scenario:
    Given url "https://petstore.swagger.io/v2/user"
    And request { "id": 0, "username": "GalesDev", "firstName": "string", "lastName": "string", "email": "gales@prueba.com", "password": "Password01.", "phone": "9876543212", "userStatus": 0 }
    When method post
    Then status 201
    And def contactName = $.username