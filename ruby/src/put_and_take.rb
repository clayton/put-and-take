class PutAndTake
  def evaluate(number, action)
    return number.to_i * (action == "P" ? -1 : 1)
  end
end