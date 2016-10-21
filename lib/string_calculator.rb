class StringCalculator


  def add string_numbers
    numbers = string_numbers.split(/[\n,]/)
    raise "negatives not allowed" if numbers.any?{ |string| string.include?('-') }
    digits = numbers.map! {|number| number.to_i}
    digits.collect!{|digit| digit >= 1000 ? digit = 0 : digit = digit }
    numbers[0] == nil ? 0 : digits.reduce(:+)
  end




end
