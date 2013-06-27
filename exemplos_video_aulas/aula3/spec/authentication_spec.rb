# Authentication.auth(credential, password)
class Authentication 

  def self.auth(credential, password, finder = User)
    user = finder.find_by_credential(credential)
    user && user.auth(password)
  end

end

describe Authentication do 
  let(:finder) { mock("User") }
  let(:user) { mock("user instance") }

  it "find by cred" do 
    finder.should_receive(:find_by_credential)
      .with("CREDENTIAL")
      .and_return([])

      Authentication.auth("CREDENTIAL", "PASSWD", finder)
  end

  it "compare password" do
    fake_user = mock("user instance")
    finder.stub :find_by_credential => fake_user

    fake_user.should_receive(:auth).with("PASSWD")
    Authentication.auth("CREDENTIAL", "PASSWD", finder)
  end

  context "when credental invalid" do
    before { finder.stub :find_by_credential => nil }

    it "returns nothing when credential is invalid" do
      fake_user = mock("user instance")
      fake_user.stub :auth => nil 
      user = Authentication.auth("EMAIL", "invalid", finder)
      expect(user).not_to be
    end
  end

  context "when password is invalid" do
    
    it "returns nothing" do
      fake_user = mock("user")
      
      user = Authentication.auth("EMAIL", "invalid", finder)
      expect(user).not_to be
    end
  end

  context "when password is valid" do 
    it "returns user" do 
      fake_user = mock("user instance")
      fake_user.stub :auth => fake_user
      
      finder.stub :find_by_credential => fake_user
      user = Authentication.auth("EMAIL", "PASSWD", finder)
      expect(user).to eql(fake_user)
    end
  end 
  

end 