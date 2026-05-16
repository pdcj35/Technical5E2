Feature: User API

  Scenario: create a pet
    Given url baseUrl + '/pet'
    And request
    """
    {
      "id": 0,
      "category": {
        "id": 0,
        "name": "string"
      },
      "name": "testPet",
      "photoUrls": [
        "string"
      ],
      "tags": [
        {
          "id": 0,
          "name": "string"
        }
      ],
      "status": "available"
      }
    """
  When method post
  Then status 200
  And match response.name == 'testPet'
  And match response.id == '#number'
