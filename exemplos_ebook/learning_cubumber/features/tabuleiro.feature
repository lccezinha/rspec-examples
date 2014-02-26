# language: pt

Funcionalidade: Tabuleiro

  Cenário:
    Dado que o jogador começou a jogar
    E que a bandeira está na posicão, (1, 1)

    Quando o jogador checar a posição, (0, 0)
    Então o tabuleiro deverá ficar assim:
      |x|_|
      |_|_|

    Quando o jogador chechar a posição, (1, 1)
    Então o tabuleiro deverá ficar assim:
      |x|_|
      |_|o|

