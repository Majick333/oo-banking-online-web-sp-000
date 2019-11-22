class BankAccount
  attr_accessor :name, :status, :balance

    def initialize(name)
      @name = name
      @status = "open"
      @balance = 1000
    end

end
