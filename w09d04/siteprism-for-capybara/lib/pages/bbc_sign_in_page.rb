class Pages::BBCSignIn < SitePrism::Page

  set_url "https://account.bbc.com/signin"
  set_url_matcher /account.bbc.com\/signin/

  element :email_field, "input[id='user-identifier-input']"
  element :password_field, "input[id='password-input']"

  def enter_email
    fill_in email_field, with: "hannahmcniven@outlook.com"
    fill_in password_field, with: "ENV['HANNAH_PASSWORD']"
  end
end