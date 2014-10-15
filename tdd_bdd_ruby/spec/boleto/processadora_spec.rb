require_relative '../../lib/boleto/fatura.rb'
require_relative '../../lib/boleto/boleto.rb'
require_relative '../../lib/boleto/processadora_boleto.rb'

require 'spec_helper'

describe ProcessadoraBoleto do
  it 'unique payment' do
    processadora = ProcessadoraBoleto.new

    fatura = Fatura.new 'Cliente', 150.0
    boleto = Boleto.new 150.0

    processadora.processar [boleto], fatura

    expect(fatura.pagamentos.size).to eq(1)
    expect(fatura.pagamentos.first.value).to eq(150.0)
  end
end