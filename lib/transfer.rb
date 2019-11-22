class Transfer
  attr_accessor :sender, :receiver, :status, :amount

    def initialize(sender, receiver, amount)
      @sender=sender
      @receiver = receiver
      @status = "pending"
      @amount = amount
    end

    def valid?
      if @sender.valid? && @receiver.valid?
        return true
      end
    end

    def execute_transaction
      if @sender.valid? && @receiver.valid? == true  && sender.balance > amount
        @sender.balance -= @amount
        @receiver.balance += @amount
        @status = "complete"
      else
        @status = "rejected"
        return "Transaction rejected. Please check your account balance."
      end
    end




end
