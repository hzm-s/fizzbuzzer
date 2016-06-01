class FizzBuzz

  def initialize(number)
    @number = number
  end

  def try
    return 'fizzbuzz' if multiple_of?(15)
    return 'fizz' if multiple_of?(3)
    return 'buzz' if multiple_of?(5)
    return @number
  end

  private

    def multiple_of?(base)
      return false if zero?
      @number % base == 0
    end

    def zero?
      @number == 0
    end
end
