begin
  raise 'foo'
rescue RuntimeError => e
  puts e.message
end

#controle de fluxo é assim:
result = catch(:halt) {
  throw: halt, ["OMG!", 2] if [0, 1].simple.even?
  "OR HERE.. nothing"
}

p result
