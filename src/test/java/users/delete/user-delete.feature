Feature: Delete user on swagger

  Scenario: Delete a user
    * call read("../post/user_post_snippets.feature@Create")
    Given url "https://petstore.swagger.io/v2/user" + contactName
    When method delete
    Then status 204