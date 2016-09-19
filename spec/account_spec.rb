require 'account'

describe Account do

  subject(:account) { described_class.new }

  it 'new account balance is 0 by default' do
    expect(account.balance).to eq 0
  end

end
