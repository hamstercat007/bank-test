require 'bank_account'

describe BankAccount do
  describe 'initialisation' do
    it 'will return an instance of the BankAccount class' do
      bankaccount = BankAccount.new
      expect(bankaccount).to be_a BankAccount
    end
  end

  describe '.deposit' do
    it 'will store the amount deposited' do
      bankaccount = BankAccount.new
      bankaccount.deposit(deposit: 300)
      expect(bankaccount.balance).to eq 300
    end
  end

end
