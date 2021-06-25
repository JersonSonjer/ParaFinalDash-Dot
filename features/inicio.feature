Feature:
    Como ninio
    Quiero ingresar comandos y ejecutar los movimientos de los dos autos
    Para mover los dos autos en la pista y evitar obstáculos
Scenario:
    Given visito la pagina de inicio
    When ingreso los datos de los 2 autos "5,5-2,2 N-IAIAIADA-2,3 N-IAA-O 3,2-O 1,2-O 3,3"
    And presiono el boton "ejecutar"
    Then debe mostrar la Superficie del Terreno "Superficie de Terreno: 5,5"
