# 0.5% for a non-negative balance less than 1000 dollars.
# 1.621% for a positive balance greater or equal than 1000 dollars and less than 5000 dollars.
# 2.475% for a positive balance greater or equal than 5000 dollars.
# 3.213% for a negative balance (results in negative interest).

module SavingsAccount

  def self.interest_rate(balance)
    if balance < 1000 && balance >= 0
      0.5
    elsif balance >= 1000 && balance < 5000
      1.621
    elsif balance >= 5000
      2.475
    else
      3.213
    end
  end

  def self.annual_balance_update(balance)
    ((interest_rate(balance) * balance) / 100) + balance
  end

  def self.years_before_desired_balance(current_balance, desired_balance)
    years = 0
    while current_balance < desired_balance
      current_balance += (interest_rate(current_balance) * current_balance) / 100
      years += 1
    end
    years
  end
end
