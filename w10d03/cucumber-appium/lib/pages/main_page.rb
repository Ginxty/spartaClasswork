class MainPage
  @@budget_and_transactions = 'protect.budgetwatch:id/action_settings'

  def main_page_displayed?
    $driver.find_element(:id, @@budget_and_transactions).displayed?
  end

end