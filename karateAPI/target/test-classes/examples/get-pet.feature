Feature: Consult the created pet

  Background:
    * url baseUrl
    * def prevData = call read('create-pet.feature')
    * def petId = prevData.response.id

  Scenario: Verify created post
    Given path 'pet', petId
    When method get
    Then status 200
    And match response.name == 'testPet'
    And match response.id == petId