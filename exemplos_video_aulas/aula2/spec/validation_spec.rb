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