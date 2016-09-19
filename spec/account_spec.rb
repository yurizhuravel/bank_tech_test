require 'account'

describe Account do

  subject(:account) { described_class.new }

  it 'new account balance is 0 by default' do
    expect(account.balance).to eq 0
  end

  describe '#deposit' do
    it 'adds funds to the user\'s account' do
      account.deposit(1000)
      expect(account.balance).to eq 1000
    end
  end


end
