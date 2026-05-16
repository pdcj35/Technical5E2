Feature: Consult the created pet

  Background:
    * url baseUrl
    * def prevData = call read('get-pet.feature')
    * def petId = prevData.response.id

  Scenario: Verify created post
    Given path 'pet'
    And request
    """
    {
        "id": #(petId),
        "category": {
            "id": 0,
            "name": "string"
        },
        "name": "updatedPetName",
        "photoUrls": [
            "string"
        ],
        "tags": [
            {
            "id": 0,
            "name": "string"
            }
        ],
        "status": "sold"
    }
    """
    When method put
    Then status 200
    And match response.name == 'updatedPetName'
    And match response.status == 'sold'
    And match response.id == petId