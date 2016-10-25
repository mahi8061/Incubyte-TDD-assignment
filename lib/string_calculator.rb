class StringCalculator

  NEGATIVES = "negatives not allowed"

  def add string_numbers
    numbers = split_the_string string_numbers
    if delimiters? numbers
      delimeter = delimeter(numbers)

      numbers =numbers[1].delete(delimeter).split("")


    end
    raise NEGATIVES if negatives? numbers
    digits = convert_to_integers numbers
    remove_numbers_above_1000 digits
  
    numbers[0] == nil ? 0 : digits.reduce(:+)
  end

private

  def split_the_string string
    string.split(/[\n,]/)
  end

  def negatives? numbers
    numbers.any?{ |string| string.include?('-') }
  end

  def convert_to_integers numbers
    numbers.map! {|number| number.to_i}
  end

  def remove_numbers_above_1000 digits
    digits.collect!{|digit| digit >= 1000 ? digit = 0 : digit = digit }
  end

  def delimiters? numbers
    numbers.any?{|number| number.include?("//")}
  end

  def delimeter numbers
    numbers.first.delete('//[]')
  end


end
