#Feature: Create account with Data generator
#
  #Background: Generate Token
    #Given url "https://tek-insurance-api.azurewebsites.net"
    #* def result = callonce read('GenerateToken.feature')
    #* def generatedToken = result.response.token
    #And header Authorization = "Bearer " + generatedToken
#
  #Scenario: Create New Account using Data generator;
    #* def generator = Java.type('tiger.api.test.data.DataGenerator')
    #* def email = generator.getEmail()
    #* def firstName = generator.getFirstName()
    #* def lastName = generator.getLastName()
    #* def dob = generator.getDob()
    #Given path "/api/accounts/add-primary-account"
    #And request
      #"""
      #{
      #"email": "#(email)",      "title": "Mr.",
      #"firstName": "#(firstName)",
      #"lastName": "#(lastName)",
      #"gender": "MALE",
      #"maritalStatus": "MARRIED",
      #"employmentStatus": "student",
      #"dateOfBirth": "#(dob)"
      #}
      #"""
    #When method post
    #Then status 201
    #* def generatedId = response.id
    #And print generatedId
    #And print response
    #Then assert response.email == email
