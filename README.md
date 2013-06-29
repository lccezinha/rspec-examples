Just to learn about RSpec. Get out !

#### NOTES:

##### subject

    subject(:lol)

> Is the subject that will be tested. Reloaded in each test.

Instead this:

    foo = Foo.new
    expect(foo).to be_true

You can use:

    subject(:foo) { Foo.new }
    expect(foo).to be_true

##### let

    let(:lol) { 'lol' }

> used to define some dependencies of the test. If you will test a controller and need a User for example. <br >
Not reloaded is each test, If some test modify this value, this modification will be used in the others tests


##### mock

> Used when you need to fake some object in test

#####stub

> Used when you need to simulate some method in a mock object