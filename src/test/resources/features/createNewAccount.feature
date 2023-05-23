Feature: Creating new account

  Background: 
    Given url "https://tek-insurance-api.azurewebsites.net"
    Then path "/api/token"
    And request {"username": "supervisor","password": "tek_supervisor"}
    Then method post
    And status 200
    And print response

  Scenario: Create new account
   Given url "https://tek-insurance-api.azurewebsites.net"
    Given path "/api/accounts/add-primary-account"
    And header Authorization = "Bearer " + response.token
    And request
      """
      
       { "email": "Bahar1@gmail.com",
        "firstName": "Bahar",
        "lastName": "Niazi",
        "title": "Ms.",
        "gender": "FEMALE",
        "maritalStatus": "SINGLE",
        "employmentStatus": "student",
        "dateOfBirth": "2001-11-26",
       }

      """
    And method post
    And status 201
    And print response
