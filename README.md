Just to learn about RSpec. Get out !

### NOTES:

* subject(:lol) => is the 'subject' that will be tested. Instead this:
`foo = Foo.new`
`expect(foo).to be_true`

You can use:

`subject(:foo) { Foo.new }`
`expect(foo).to be_true` 

* let(:lol): used to define some dependencies of the test. If you will test a controller and need a User for example, you can do this:
`let(:user) { "user" }`