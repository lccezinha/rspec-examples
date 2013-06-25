# RSpec::Matchers.define :name do |expected|

#     match do |actual|
#     end

#     failure_message_for_should do |actual|
#     end

#     failure_message_for_should_not do |actual|
#     end

#     description do 
#       ""
#     end

# end


RSpec::Matchers.define :be_gt do |smaller_number|

    match do |greate_number|
      greate_number > smaller_number
    end

    failure_message_for_should do |greate_number|
      "expect #{greate_number.inspect} be greate than #{smaller_number.inspect}"
    end

    failure_message_for_should_not do |actual|
      "expect #{great_number.inspect} be greate than #{smaller_number.inspect}"
    end

    description do 
      "be greater than #{smaller_number.inspect}"
    end

end

describe "Numbers" do 

  it "is greather than" do 
    expect(1).to be > 0
    expect(1).to be_gt(0)
    expect(2).to be_gt(3)
  end

end

