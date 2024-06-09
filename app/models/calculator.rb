class Calculator
  def add(numbers)
    return 0 if numbers.empty?
    return numbers.to_i if numbers.length == 1
    delimiters = [",", "\n"]
    numbers.split(Regexp.union(delimiters)).map(&:to_i).sum
  end
end