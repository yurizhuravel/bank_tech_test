class Account
  STARTING_BALANCE = 0
  attr_reader :balance

  def initialize(balance = STARTING_BALANCE)
    @balance = balance
  end

end
