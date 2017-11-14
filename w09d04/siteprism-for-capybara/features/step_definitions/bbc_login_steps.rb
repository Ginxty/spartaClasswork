Given(/^I can access the BBC home page$/) do
	@bbc_site = BBCSite.new
	@bbc_site.bbc_home_page.load
	@bbc_site.bbc_home_page.displayed?
end

And(/^I am able to select sign in$/) do
  @bbc_site.bbc_home_page.click_sign_in_link
end

When(/^I enter my login details$/) do 
  @bbc_site.bbc_sign_in_page.enter_email
  @bbc_site.bbc_sign_in_page.enter_password
end