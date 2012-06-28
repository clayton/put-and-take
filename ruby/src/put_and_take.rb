class PutAndTake
  def evaluate(number, action)
    tokens = number.to_i

    if action == "P"
      return tokens * -1
    else
      return tokens
    end
  end
end