# language: pt

# Funcionalidade: Soma

#   Cenário: Soma de 1 + 1
#     Quando somo 1 + 1
#     Então o resultado é 2

#   Cenário: Soma de 1 + 3
#     Quando somo 1 + 3
#     Então o resultado é 4

# Exemplo de Scenario Outline

Funcionalidade: Soma

  Esquema do Cenário: Soma de números
    Quando somo <a> + <b>
    Então o resultado deve ser <resultado>

  Exemplos:
    |a|b|resultado|
    |1|2|3|
    |5|10|15|