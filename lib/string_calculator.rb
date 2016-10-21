class StringCalculator
  def add string_numbers
      0 if string_numbers == ""
      string_to_integer string_numbers
  end

private

  def string_to_integer string
    string.to_i
  end



end
