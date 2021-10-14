describe "Les emails " do
    it "should return c'est ok" do
      expect(get_townhall_email()).to eq(a[price])

    end
    it "les valeurs ne sont pas null" do
        expect(get_townhall_email(townhall_url)).to eq(true)
    
    end
end


describe "Methode URL" do
  it "should return URL work" do
    expect(get_townhall_urls()).to eq(a[price])

  end
  it "Should return URL OK" do
      expect(get_townhall_urls()).to eq(true)
  
  end
end