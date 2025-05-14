class Calculator
  def add(*args)
    args.sum
  end

  def multiply(*args)
    args.reduce(:*)
  end
end
