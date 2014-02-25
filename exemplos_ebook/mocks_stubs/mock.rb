class DeepThought
  def initialize(printer)
    @printer = printer
  end
  def print_answer
    @printer.print '42'
  end
end

describe DeepThought do

  it do
    printer = double('printer')
    computer = DeepThought.new(printer)

    expect(printer).to receive(:print).with('42')

    computer.print_answer
  end

end