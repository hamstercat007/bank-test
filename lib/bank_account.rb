require 'date'

class BankAccount
  attr_reader :balance

  def initialize
    @balance = 0
    @logs = []
  end

  def deposit(deposit:, date:)
    @balance += deposit
    @logs.push(deposit, Date.parse(date), @balance)
  end

  def withdrawal(withdrawn:, date:)
    @balance -= withdrawn
    @logs.push(withdrawn, Date.parse(date), @balance)
  end
end
