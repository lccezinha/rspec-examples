require 'active_record'

ActiveRecord::Base.establish_connection({
  adapter: 'mysql',
  database: ":memory:"
})

ActiveRecord::Schema.define(:version => 0) do 
  create_table :users do |t|
    t.timestamps
  end
end

class User < ActiveRecord::Base
end

describe User do
  let(:user) { User.create! }

  it "set size" do 
    user #executa o método let 
    expect(User.count).to eql(1)
  end

end