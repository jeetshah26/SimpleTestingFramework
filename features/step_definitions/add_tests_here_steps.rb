When(/^I visit "([^"]*)"$/) do |url|
  @browser.goto(url)
end

Then(/^I can see the google search bar$/) do
  sleep 2
  sleep 5
end

And(/^I can search for term "([^"]*)"$/) do |search_term|
  @browser.text_field(id: 'lst-ib').send_keys search_term,:enter

end

Then(/^I can see the google search results include "([^"]*)"$/) do |expected_result|
   expect(@browser.divs(class: ['g']).first.text).to include(expected_result)
end