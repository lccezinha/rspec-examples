class NfeGenerator
  def initialize(actions)
    @actions = actions
  end

  def generate(order)
    nfe = Note.new order.customer, order.total * 0.94, Time.now

    @actions.each { |action| action.execute(nfe) }

    nfe
  end
end