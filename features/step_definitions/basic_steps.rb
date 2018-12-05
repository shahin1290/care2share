Given('the following user exists') do |table|
    table.hashes.each do |user|
        FactoryBot.create(:user, user)
    end
end

Given('I click {string}') do |link|
    click_on link
end

When('I fill in {string} field with {string}') do |field, input|
    fill_in field, with: input
end

Then('I should see {string}') do |string|
pending # Write code here that turns the phrase above into concrete actions
end

When("I visit the site") do
    visit root_path
end

When('stop') do
    binding.pry
end

Then('show me the page') do
    save_and_open_page
end