class StringCalculator
  def self.add(input_data)
    #
    return 0 if input_data.strip.empty?

    return input_data.to_i if input_data.match?(/^\d+$/)

    numbers = input_data.split(',').map(&:to_i)
    numbers.sum
  end
end