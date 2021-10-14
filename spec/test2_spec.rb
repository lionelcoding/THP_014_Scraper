require_relative '../lib/app2.rb'
# describe "Les emails " do
#     it "Tous les emails sont présence" do
#       expect(get_townhall_email()).to be_truthy

#     end
#     it "les valeurs ne sont pas null" do
#         expect(get_townhall_email("@")).to be_truthy
    
#     end
# end


describe "Methode URL" do
  it "should return URL work" do
    expect(get_townhall_urls()).to be_truthy

  end
  it "Should return URL OK" do
      expect(get_townhall_urls()).to be_truthy
  
  end
end