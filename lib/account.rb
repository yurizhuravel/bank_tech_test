class Account

  STARTING_BALANCE = 0.0
  attr_reader :balance

  def initialize
    @balance = STARTING_BALANCE
    @statement = Statement.new
  end

  def deposit(amount)
    @balance += amount.to_f
    @statement.record_transaction(amount, nil, @balance)
  end

  def withdraw(amount)
    fail "You do not have sufficient funds" if amount > @balance
    @balance -= amount.to_f
    @statement.record_transaction(nil, amount, @balance)
  end

end
