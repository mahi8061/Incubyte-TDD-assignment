class StringCalculator


  def add string_numbers
    numbers = string_numbers.split(/[\n,]/)
    raise "negatives not allowed" if numbers.any?{ |string| string.include?('-') }
    p numbers
    numbers[0] == nil ? 0 : numbers.map! {|number| number.to_i}.reduce(:+)
  end




end
