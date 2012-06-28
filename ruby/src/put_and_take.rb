class PutAndTake

  attr_accessor :tokens

  def initialize(args = {})
    self.tokens = args[:tokens]
  end

  def evaluate(number, action)
    tokens_to_take = take_pot_or_number?(number)

    if take_or_put?(action)
      return tokens_to_take * -1
    else
      return tokens_to_take
    end
  end

  def take_pot_or_number?(number)
    if number == "A"
      return tokens
    else
      return number.to_i
    end
  end

  def take_or_put?(action)
    return true if action == "P"
  end
end