require "ng_banks/version"
require "ng_banks/banks"

module NgBanks
  def self.getBanks
    BANKS
  end

  def self.getBank(value)
    attr = value =~ /[A-Za-z]+/ ? :slug : :code
    if BANKS.first.respond_to?(attr)
      "not valid"
    else
      bank = BANKS.select { |bank| bank[attr] == value}
      bank.first
    end
  end

  def self.getBank_by(attr, value)
      bank = BANKS.select { |bank| bank[attr] == value}
      bank.first
  end
end
