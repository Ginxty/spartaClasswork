require 'capybara'

Capybara.register_driver :selenium do |app|
  Capybara::Selenium::Driver.new(app, browser: :chrome)
end 

sesh = Capybara::Session.new(:selenium) 

sesh.visit('http://toolsqa.com/automation-practice-form/')


# fill in form inputs using name or id
sesh.fill_in 'firstname', with: "James"

sesh.fill_in 'lastname', with: "O'Neill"

sesh.fill_in 'datepicker', with: '21/09/1996'


# radio button selection using id
sesh.choose 'sex-0'
sesh.choose 'exp-6'

# find using css selector like JQuery
sesh.find('#profession-1').click
sesh.find('#tool-2').click


# select from dropdowns using ids and names
sesh.select 'Europe', from: 'continents'
sesh.select 'Wait Commands', from: 'selenium_commands'


# click button option - needs html button tag and id
sesh.click_button 'submit'

# finders
sesh.find_button('Button') 
sesh.find_link('Partial Link Test')
sesh.find( :xpath, '//*[@id="content"]/form/fieldset/div[8]/a').hover


sleep 7