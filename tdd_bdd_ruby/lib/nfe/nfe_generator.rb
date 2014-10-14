class NfeGenerator
  def initialize(nfe_dao, sap)
    @nfe_dao = nfe_dao
    @sap = sap
  end

  def generate(order)
    nfe = Note.new order.customer, order.total * 0.94, Time.now

    @nfe_dao.save nfe
    @sap.send nfe

    nfe
  end
end