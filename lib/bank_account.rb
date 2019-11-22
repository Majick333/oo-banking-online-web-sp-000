class BankAccount
  attr_accessor  :status, :balance
  attr_reader :name

    def initialize(name)
      @name = name
      @status = "open"
      @balance = 1000
    end

    def deposit(amount)
      @balance += amount
    end

    def display_balance
      print "Your balance is #{self.balance}."
    end

    def valid?
      if self.status == "open" && self.balance > 0
        return true
      else
        false
      end
    end

end
