# Given('I am logged in as {string}') do |email|
#     user = User.find_by email: email
#     Log_in_as user, scope: :user
#     visit root_path
# end


Given('I click {string}') do |link|
    click_on link
end

When("I visit the site") do
    visit root_path
end


When('I fill in {string} with {string}') do |field, input|
    fill_in field, with: input
end
  
Given('show me the page') do
    save_and_open_page
end

When('stop') do
    binding.pry
end
  

