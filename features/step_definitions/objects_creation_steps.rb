Given('the following user exists') do |table|
    table.hashes.each do |user|
        FactoryBot.create(:user, user)
    end
end

Given('the following campaign exists') do |table|
    table.hashes.each do |campaign|
        FactoryBot.create(:campaign, campaign)
    end
end

Given("the following campaigns exists") do |table|
    # table is a Cucumber::MultilineArgument::DataTable
    pending # Write code here that turns the phrase above into concrete actions
  end
  