Given('the following campaigns exists') do |table|
    table.hashes.each do |campaign|
        FactoryBot.create(:campaign, campaign)
    end
end
  