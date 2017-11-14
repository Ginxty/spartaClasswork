Feature: I am able to use the Practice Automation form, fill it in and submit it with expected results.

	Scenario: I can fill in the form fields with expected data types 

		Given I can access the toolsqa Practice Automation Form
		When I fill in the fields with expected data types
		Then they appear on the page correctly