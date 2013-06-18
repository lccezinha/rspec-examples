class User < Struct.new(:name, :age)
end

user = User.new("Luiz", 23)
p user.name
p user.age

#não funciona pois não tem o attr
p user.email = 'lccezinha@gmail.com'

require 'ostruct'

user = OpenStruct.new(:name => 'Luiz', :age => 33)

# funciona pois é um obg aberto || nil
p user.email = 'lccezinha@gmail.com'
