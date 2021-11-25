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
      bankaccount.deposit(deposit: 300, date: '10-11-2021')
      expect(bankaccount.balance).to eq 300
    end
  end

  describe '.withdrawal' do
    it 'will withdraw the amount from the bank account' do
      bankaccount = BankAccount.new
      bankaccount.deposit(deposit: 5000, date: '10-11-2021')
      bankaccount.withdrawal(withdrawn: 500, date: '12-11-2021')
      expect(bankaccount.balance).to eq 4500
    end
  end

  describe '.statement' do
    it 'will print a statement of deposits, withdrawals and balance including dates' do
      bankaccount = BankAccount.new
      bankaccount.deposit(deposit: 5000, date: '2021-11-10')
      bankaccount.deposit(deposit: 100, date: '2021-11-11')
      bankaccount.withdrawal(withdrawn: 500, date: '2021-11-12')
      expect(bankaccount.statement).to eq "date || credit || debit || balance\n 12-11-2021 || || 500.00 || 4600.00\n 11/11/2021 || 100.00 || || 5100.00\n 10-11-2021 || 5000.00 || || 5000.00"
      
    end
  end
end
