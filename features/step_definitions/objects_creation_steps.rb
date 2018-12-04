Given("the following campaigns exists") do |table|
    table.hashes.each do |campaign|
        Campaign.create!(article)
      end
end
  