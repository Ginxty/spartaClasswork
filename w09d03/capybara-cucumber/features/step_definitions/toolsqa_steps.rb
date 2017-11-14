Given(/^I can access the toolsqa Practice Automation Form$/) do
	visit('/automation-practice-form/')
end

When(/^I fill in the fields with expected data types$/) do 
	fill_in 'firstname', with: "Oscelott"
	fill_in 'lastname', with: "Snake"
	choose('sex-0')
	choose('exp-0')
	select('Europe', :from => 'continents')
end

Then(/^they appear on the page correctly$/) do
	expect('lastname').to have_content?

end