require 'selenium-webdriver'

class SeleniumQatoolsForm
  def initialize
    Selenium::WebDriver::Chrome.driver_path = '/usr/local/Cellar/chromedriver/2.31/bin/chromedriver'

    @driver = Selenium::WebDriver.for :chrome 
    @practice_form_url = 'http://toolsqa.com/automation-practice-form/'
  end

  def access_practice_form
    @driver.get @practice_form_url
  end

  def add_name_to_firstname_field
    @driver.find_element(:name, 'firstname').send_keys("James") 
  end

  def add_name_to_lastname_field
    @driver.find_element(:name, 'lastname').send_keys("O'Neill") 
  end
  def click_male
    @driver.find_element(:id, 'sex-0').click
  end

  def input_date
    @driver.find_element(:id, 'datepicker').send_keys('the day i got woke...')
  end

  def select_profession
    @driver.find_element(:id, 'profession-1').click
  end

  def select_continent
    drop_down = @driver.find_element(:id, 'continents').click
    options = drop_down.find_elements(:tag_name, 'option')
    options[1].click
  end
    
end


practice_form_page = SeleniumQatoolsForm.new

practice_form_page.access_practice_form

practice_form_page.add_name_to_firstname_field

practice_form_page.add_name_to_lastname_field

practice_form_page.click_male

practice_form_page.input_date

practice_form_page.select_profession

practice_form_page.select_continent

sleep 5



