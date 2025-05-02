class StringCalculator
  def self.add(input_data)
    #
    return 0 if input_data.strip.empty?
    
    # based on the split handle multiple conditions
    delimiters = /,|\n/
    numbers = input_data.split(delimiters).map(&:to_i)
    numbers.sum

    
  end
end