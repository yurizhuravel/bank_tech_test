require_relative 'account'

class Statement

  attr_reader :transactions

  def initialize
    @transactions = []
  end

  def record_transaction(credit, debit, balance)
    @transactions << [date_stamp, credit, debit, balance ]
  end

  def date_stamp
    date = Time.new
    date = date.day.to_s + "/" + date.month.to_s + "/" + date.year.to_s
  end

end
