require_relative '../lib/app.rb'

describe "Scrap method" do
    it "Les prix sont ok" do
      expect(scrap()).to be_truthy

    end
    it "Les noms sont Ok" do
      expect(scrap()).to be_truthy
    
    end
end

# describe "Scrap method" do
#   it "should return c'est ok" do
#     expect(scrap()).to be_truthy

#   end
#   it "should return c'est ok" do
#     expect(scrap()).to eq(a[title])
  
#   end
# end