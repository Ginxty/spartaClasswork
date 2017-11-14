

describe 'incorrect user details produce valid error' do

  context 'correct errors when incorrect input' do

    it 'should produce an error with incorrect password' do 
      @bbc_site = BBCSite.new
      @bbc_site.bbc_homepage.visit_homepage
      @bbc_site.bbc_homepage.sign_in_link.click
      @bbc_site.bbc_login.enter_email
      @bbc_site.bbc_login.enter_incorrect_password
      @bbc_site.bbc_login.submit
      expect(@bbc_site.bbc_login.check_wrong_password_error).to be true
    end
  end
end