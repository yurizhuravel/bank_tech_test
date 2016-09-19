require 'statement'

describe Statement do

  subject(:statement) { described_class.new }

  it 'new statement contains no transactions' do
    expect(statement.transactions).to be_empty
  end

  describe 'storing the transactions history' do

    before(:each) do
      statement.record_transaction(1000.0, nil, 1000.0)
      statement.record_transaction(nil, 500.0, 500.0)
    end

    it 'stores new deposits' do
      expect(statement.transactions[0]).to include(1000.0)
    end

    it 'stores new withdrawals' do
      expect(statement.transactions[1]).to include(500.0)
    end

  end

end
