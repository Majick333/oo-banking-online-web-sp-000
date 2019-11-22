class Transfer
  attr_accessor :sender, :receiver, :status, :amount

    def initialize(sender, receiver, amount)
      @sender=sender
      @receiver = receiver
      @status = "pending"
      @amount = amount
    end

    def valid?
      if sender.valid? && receiver.valid? == true
        return true
      else
        return false
      end
    end

    def execute_transaction
      if sender.amount > sender.balance || sender.valid? == false
        return "Insuffiecent Funds"
      end
    end




end
