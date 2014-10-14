require_relative '../../lib/nfe/nfe_dao.rb'
require_relative '../../lib/nfe/nfe_generator.rb'
require_relative '../../lib/nfe/note.rb'
require_relative '../../lib/nfe/order.rb'
require_relative '../../lib/nfe/sap.rb'

require 'spec_helper'

describe NfeGenerator do

  it 'generate with discount %6' do
    nfe_dao = double('nfe_dao')
    nfe_dao.stub(:save)

    sap = double('sap')
    sap.stub(:send)

    nfe_generator = NfeGenerator.new nfe_dao, sap
    order         = Order.new 'Luiz', 1000, 1

    nf = nfe_generator.generate order
    discounted = 1000 * 0.94

    expect(nf.value).to eq(discounted)
  end

end