require 'capybara/dsl'

class BBCLogin
  include Capybara::DSL

  #page objects
  USERNAME_FIELD = 'user-identifier-input'
  PASSWORD_FIELD = 'password-input'
  ERROR_MESSAGE = '#form-message-password'

  def enter_email
    fill_in USERNAME_FIELD, with: "hannahmcniven@outlook.com"
  end

  def enter_incorrect_password
    fill_in PASSWORD_FIELD, with: "Password1"
  end

  def check_wrong_password_error
    find(ERROR_MESSAGE).visible?
  end

  def submit
    click_button 'submit-button'
  end
end