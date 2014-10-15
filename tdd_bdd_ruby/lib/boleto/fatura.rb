class Fatura
  attr_reader :name, :value, :pagamentos
  def initialize(name, value)
    @name = name
    @value = value
  end
end