class StringCalculator


  def add string_numbers
    numbers = string_numbers.split(",")
    numbers[0] == nil ? 0 : numbers.map! {|number| number.to_i}.reduce(:+)
  end




end
