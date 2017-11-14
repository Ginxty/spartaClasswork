require 'spec_helper'

describe "Testing the budget app" do 
  before(:all) do
    @driver = Appium::Driver.new(opts,true)
    Appium.promote_appium_methods(RSpec::Core::ExampleGroup)
    @driver.start_driver
  end

  it "should open the budgetwatch app" do
    find_elements(:id, 'protect.budgetwatch:id/action_settings')[0].displayed?
  end

  it "should navigate to the budget list page" do
    find_elements(:id, 'protect.budgetwatch:id/menu')[0].click
  end

  it "takes you to add budget screen" do
    find_element(:id, 'protect.budgetwatch:id/action_add').click
  end

  it "adds info about the budget" do
    find_element(:id, 'protect.budgetwatch:id/budgetNameEdit').send_keys('memes = dreams')
    find_element(:id, 'protect.budgetwatch:id/valueEdit').send_keys('1337')
  end

  it 'saves the budget' do
    find_element(:id, 'protect.budgetwatch:id/action_save').click
  end


  after(:all) do
    @driver.driver_quit
  end
  
end