# usado igual um before do RSpec

# language: pt

# Funcionalidade: background

#   Cenário:
#     Dado que estou somando 1 + 1
#     E adiciono mais 2
#     Então o resultado deve ser 4

#   Cenário:
#     Dado que estou somando 1 + 1
#     E adiciono 8
#     Então o resultado deve ser 10

# remover a lógica semelhante, no 'Dado' p/ um background comum aos outros cenários

Funcionalidade: background

  Contexto:
    Dado que estou somando 1 + 1

  Cenário:
    E adiciono mais 2
    Então o resultado deve ser 4

  Cenário:
    E adiciono 8
    Então o resultado deve ser 10