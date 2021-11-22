require 'bank_account'

describe BankAccount do
  describe 'initialisation' do
    it 'will return an instance of the BankAccount class' do
      bankaccount = BankAccount.new
      expect(bankaccount).to be_a BankAccount
    end
  end
end
