class BankAccount
  attr_reader :name
  attr_accessor :balance, :status
  
  def initialize(name, balance=1000, status="open")
   @name = name
   @balance = balance
   @status = status
  end 
  
  
  def deposit(amount)
    @balance = @balance + amount
    @balance
  end
  
  def display_balance
    return "Your balance is #{@balance}"
  end
    

end
