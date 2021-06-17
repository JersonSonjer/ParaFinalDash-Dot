Feature:
    Como ninio
    Quiero saber la posicion inicial del auto luego de ejecutar los comandos
    Para poder validar que termino en la posicion correcta
Scenario:
    Given visito la pagina de comandos
    When ingreso los datos "5,5-2,2,N-IAIAIADA"
    And presiono el boton "ejecutar"
    Then deberia mostrar la posicion inicial del auto "Posicion Inicial: 5,5-2,2,N-IAIAIADA"
    And deberia mostrar los comandos ingresados "Comandos: 5,5-2,2,N-IAIAIADA"
    And deberia mostrar la posicion final del auto "Posicion Final: 5,5-2,2,N-IAIAIADA"
