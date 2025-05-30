Feature: Caso de prueba DELETE

  Scenario: caso de prueba tipo DELETE positivo
    Given url 'https://serverest.dev/' + '/usuarios/fTW1uoc8bFUxLJRy'
    When method DELETE
    Then status 200
    And print response
    And match response ==
  """
  {
    'message': '#string'
    }
  """

  Scenario: caso de prueba tipo DELETE inválido (ID ya eliminado)
    Given url 'https://serverest.dev/' + '/usuarios/qbMqntef4iTOwWfg'
    When method DELETE
    Then status 200
    And print response
    And match response ==
  """
  {
    'message': '#string'
    }
  """