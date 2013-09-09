class BankAccount
  def initialize(first_name, last_name, balance=0, debt=0)
    @first_name = first_name
    @last_name = last_name
    @balance = balance
    @debt = debt
  end

  def deposit(credit)
    @balance = @balance + credit
  end

  def withdraw(debit)
    if @balance < debit
      puts "You have an inccured an overdraft penalty of $10.00"
      @balance = @balance - (debit + 10)
    elsif @balance < 0
      puts "Insufficient funds"
    else
      @balance = @balance - debit
    end
  end

  def credit_purchase(credit_buy)
    @debt = @debt + credit_buy
  end

  def pay_off_credit_card
    if @balance > @debt
      @balance = @balance - @debt
      puts "Your debt of $#{@debt} has been subtracted from your balance."
      @debt = 0
    else
      puts "Insufficient funds."
    end
  end

  def monthly_interest(months)
    interest_amount = months * 0.015
    interest_accrued = interest_amount * @debt
    @debt = @debt + interest_accrued
    puts "After #{months} months your debt is now $#{@debt}"
  end

  def to_s
    "User: #{@last_name}, #{@first_name} has a balance of $#{@balance} and a credit card debt of $#{@debt}."
  end

end

account_a=BankAccount.new("Mike", "Cooley")
# puts account_a
# account_a.deposit(250.0)
# puts account_a
# account_a.withdraw(50.0)
# puts account_a
# account_a.credit_purchase(150.0)
# puts account_a
# account_a.monthly_interest(6)
# account_a.pay_off_credit_card
# puts account_a
account_a.deposit(100.0)
puts account_a
account_a.withdraw(150.0)
puts account_a
account_a.withdraw(1.0)
puts account_a
