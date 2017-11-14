require 'appium_lib'
require 'cucumber'
require_relative '../../lib/budget_app'

def opts
  {
   caps: {
      platformName: "Android",
      deviceName: "emulator-5554",
      app: "/Users/tech-a55/Development/Classwork/w10d03/cucumber-appium/lib/budgetwatch.apk"
    }
  }
end

Appium::Driver.new(opts, true)

World(BudgetApp)