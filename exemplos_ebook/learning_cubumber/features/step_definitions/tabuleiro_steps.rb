Dado(/^que o jogador começou a jogar$/) do
  @board = [
    ["_", "_"],
    ["_", "_"]
  ]
end

Dado(/^que a bandeira está na posicão, \((\d+), (\d+)\)$/) do |arg1, arg2|
  @flag_coordinates = [arg1, arg2]
end

Quando(/^o jogador checar a posição, \((\d+), (\d+)\)$/) do |m, n|
  player_found_the_flag = @flag_coordinates == [m, n]
  mark = player_found_the_flag ? "o" : "x"
  @board[m.to_i][n.to_i] = mark
end

Então(/^o tabuleiro deverá ficar assim:$/) do |expected_board|
  expected_board.diff!(@board)
end