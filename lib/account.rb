class Account

  STARTING_BALANCE = 0
  attr_reader :balance

  def initialize
    @balance = STARTING_BALANCE
  end

  def deposit(amount)
    @balance = @balance + amount
  end

  def withdraw(amount)
    fail "You do not have sufficient funds" if amount > @balance
    @balance = @balance - amount
  end

end
