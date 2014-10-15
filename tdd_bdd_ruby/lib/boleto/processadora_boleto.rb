require_relative 'pagamento.rb'
require_relative 'meio_pagamento.rb'

class ProcessadoraBoleto
  def processar(boletos, fatura)
    pagamento = Pagamento.new boletos.first.value, MeioPagamento::BOLETO
    fatura.pagamentos << pagamento
  end
end