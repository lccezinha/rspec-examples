Just to learn about RSpec. Get out !

### NOTES:

* subject(:lol) => is the 'subject' that will be tested.
> (RELOAD IN EACH TEST)

Instead this:

    foo = Foo.new
    expect(foo).to be_true

You can use:

    subject(:foo) { Foo.new }
    expect(foo).to be_true

* let(:lol) => used to define some dependencies of the test. If you will test a controller and need a User for example, you can do this:
> (NOT RELOAD IN EACH TEST. If some test modify this value, this modification will be used in the others tests.) 

    let(:user) { "user" }

* mock: 

* stub: