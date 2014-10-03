class Converter
  SYMBOLS = {
    'I' => 1,
    'V' => 5,
    'X' => 10,
    'L' => 50,
    'C' => 100,
    'D' => 500,
    'M' => 1000
  }

  def convert(symbols)
    sum  = 0
    last = 0

    symbols.split('').reverse.each do |chunk|
      actual   = SYMBOLS[chunk]
      multiply = (actual < last) ? -1 : 1
      sum      += actual * multiply
      last     = actual
    end

    sum
  end

end