# OS ARGUMENTOS DO BLOCO SÃO SEMPRE STRINGS!

Quando(/^somo (\d+) \+ (\d+)$/) do |arg1, arg2|
  @result = arg1.to_i + arg2.to_i
end

Então(/^o resultado é (\d+)$/) do |expected_result|
  # fail unless expected_result.to_i.eql?(@result)
  expect(@result).to eql(expected_result.to_i)
end

