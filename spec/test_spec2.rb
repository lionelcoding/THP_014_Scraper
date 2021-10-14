describe "Scrap method" do
    it "should return c'est ok" do
      expect(scrap()).to eq(a[price])

    end
    it "should return TRUE when an integer is a multiple of 3 or 5" do
        expect(is_multiple_of_3_or_5?(2)).to eq(true)
    
    end
end