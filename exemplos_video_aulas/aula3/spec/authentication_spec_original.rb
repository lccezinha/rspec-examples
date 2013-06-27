# Authentication.auth(credential, password)

class Authentication 

  def self.auth(credential, password)
    user = User.where('email = :credential or username = :credential', credential: credential).first
    user && user.auth(password)
  end

end

describe Authentication do 
  let(:user_class) { mock("User") }

  before do 
    stub_const "User", user_class
  end

  it "find by cred" do 
    User.should_receive(:where)
      .with('email = :credential or username = :credential', credential: "CREDENTIAL")
      .and_return([])

      Authentication.auth("CREDENTIAL", "PASSWD")
  end

  it "compare password" do
    fake_user = mock("user instance")
    User.stub_chain(:where, :first).and_return(fake_user) 
    fake_user.should_receive(:auth).with("PASSWD")

    Authentication.auth("CREDENTIAL", "PASSWD")
  end

  context "when credental invalid" do 
    it "returns nothing when credential is invalid" do
      User.stub where: [] 
      user = Authentication.auth("invalid", "invalid")
      expect(user).not_to be
    end
  end

  context "when password is invalid" do
    let(:fake_user) { mock("user instance") }
    it "returns nothing" do
      User.stub where: [fake_user] 
      user = Authentication.auth("EMAIL", "invalid")
      expect(user).not_to be
    end
  end

  context "when password is valid" do 
    it "returns " do 

      user = Authentication.auth("EMAIL", "PASSWD")
      expect(user).to eql("USER")
    end
  end 
  

end 