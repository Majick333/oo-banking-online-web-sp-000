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
      elsif @status == "complete"
        "Transaction was already exucted"
      else
        @status = "rejected"
        return "Transaction rejected. Please check your account balance."
      end
    end

    def reverse_transfer
      if @status == "complete"
        @sender.deposit(amount)
        @receiver.deposit(amount * -1)
        @status = "reversed"
      end
    end


end
