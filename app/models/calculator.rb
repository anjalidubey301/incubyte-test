class Calculator
  def add(numbers)
    return 0 if numbers.empty?
    return numbers.to_i if numbers.length == 1

    delimiters = [",", "\n"]
    if numbers.start_with?("//")
      delimiter, numbers = numbers.split("\n", 2)
      delimiters << delimiter[2..-1]
    end

    numbers.split(Regexp.union(delimiters)).map(&:to_i).sum
  end
end