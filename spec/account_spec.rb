require 'account'

describe Account do

  subject(:account) { described_class.new }

  it 'new account balance is 0 by default' do
    expect(account.balance).to eq 0
  end

  describe '#deposit and withdraw' do

    before(:each) do
      account.deposit(1000)
    end

    it 'deposit adds funds to the user\'s account' do
      expect(account.balance).to eq 1000
    end

    it 'withdraw removes funds from the user\'s account' do
      account.withdraw(1000)
      expect(account.balance).to eq 0
    end

  end

end
