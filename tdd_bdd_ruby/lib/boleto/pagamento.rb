class Pagamento
  attr_reader :value, :meio_pagamento
  def initialize(value, meio_pagamento)
    @value = value
    @meio_pagamento = meio_pagamento
  end
end