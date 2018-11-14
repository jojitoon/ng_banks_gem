RSpec.describe NgBanks do
  it "has a version number" do
    expect(NgBanks::VERSION).not_to be nil
  end

  it "return an array of banks" do
    banks = NgBanks.getBanks()
    allBanks = BANKS
    expect(banks).to eq(allBanks)
  end

  it "return a single bank detail" do
    bank = NgBanks.getBank_by(:code, "044")
    selectedBank = BANKS.first
    expect(bank).to eq(selectedBank)
  end
  it "return a single bank detail" do
    bank = NgBanks.getBank("044")
    selectedBank = BANKS.first
    expect(bank).to eq(selectedBank)
  end
  it "does not return a single bank detail" do
    bank = NgBanks.getBank("000")
    expect(bank).to eq(nil)
  end
  it "does not return a single bank detail" do
    bank = NgBanks.getBank_by(:slug, "000")
    expect(bank).to eq(nil)
  end
end
