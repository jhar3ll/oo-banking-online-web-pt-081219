class Transfer
  attr_accessor :sender, :receiver, :amount, :status
  
  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @amount = amount
    @status = "pending"
  end 
  
  def valid?
    @sender.valid? && @receiver.valid?
  end 
  
  def execute_transaction
    if valid? && @sender.balance >= amount && @status == "pending"
      @sender.balance = balance - amount
      @receiver.balance = balance + amount
    end 
    
 end
end
