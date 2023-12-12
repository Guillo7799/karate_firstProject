Feature: Post user on swagger

  Background:
    * url "https://petstore.swagger.io/v2"
    * path "/users"
    * request { "id": 0, "username": "#(username)", "firstName": "#(firstName)", "lastName": "#(lastName)", "email": "#(email)", "password": "#(password)", "phone": "string", "userStatus": 0 }

  Scenario Outline: Post a user
    When method post
    Then status 201

    Examples:
      |id   | username   | firstName  | lastName  | email               | password    | phone       | userStatus  |
      |1    | mrmario    | mario      | Calte     | mario@malte.com     | Password01. | 9876543211  | 0           |
      |2    | justmar    | maria      | Lofredo   | maria@lofredo.com   | Password02. | 9876543211  | 0           |
