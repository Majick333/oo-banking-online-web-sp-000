class Transfer
  attr_accessor :sender, :receiver, :status, :amount

    def initialize(sender, receiver, amount)
      @sender=sender
      @receiver = receiver
      @status = "pending"
      @amount = amount
    end

    def valid?
      if sender.BankAccount.status.valid? && receiver.BankAccount.status.valid? == true
        return true
      else
        return false
      end
    end

end
