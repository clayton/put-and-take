class PutAndTake
  def evaluate(number, action)
    tokens = number.to_i

    if take_or_put?(action)
      return tokens * -1
    else
      return tokens
    end
  end

  def take_or_put?(action)
    return true if action == "P"
  end
end