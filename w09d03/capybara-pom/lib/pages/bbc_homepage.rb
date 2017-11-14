require 'capybara/dsl'

class BBCHomepage
  include Capybara::DSL

  #page objects
  HOMEPAGE_URL = "https://www.bbc.co.uk/"
  SIGN_IN_LINK_ID = "#idcta-link"

  def visit_homepage
    visit(HOMEPAGE_URL)
  end

  def sign_in_link
    find(SIGN_IN_LINK_ID)
  end
end