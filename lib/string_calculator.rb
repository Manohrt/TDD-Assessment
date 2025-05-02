class StringCalculator
  def self.add(input_data)
    return 0 if input_data.strip.empty?
    
    # based on the split handle multiple conditions
    delimiters = /,|\n/
    numbers = input_data

    if input_data.start_with?('//')
      delimiter_line, numbers = input_data.split("\n", 2)
      delimiter = Regexp.escape(delimiter_line[2..-1])
    end

    numbers.split(/#{delimiter}/).map(&:to_i).sum
  end
end