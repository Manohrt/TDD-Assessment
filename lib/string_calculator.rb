class StringCalculator
  def self.add(input_data)
    return 0 if input_data.strip.empty?
    
    # based on the default conditions
    delimiters = /,|\n/

    # Handle delimiter for any regx
    if input_data.match?(%r{^.*//(.+)\n})
      match_data = input_data.match(%r{^.*//(.+)\n})
      manual_delimiter = Regexp.escape(match_data[1])
      delimiter = /#{manual_delimiter}/
      input_data = input_data.sub(%r{^.*//.+\n}, '')
    end

    # Check only digits and no delimiters, Spliting numbers based on the delimiters and convert to integers
    if input_data.match?(/^\d+$/)
      number_list = input_data.chars.map(&:to_i)
    else
      number_list = input_data.split(delimiter).flat_map { |s| s.split(delimiters) }.map(&:to_i)
    end

    negatives = number_list.select { |num| num < 0 }

    raise "negative numbers not allowed: #{negatives.join(',')}" if negatives.any?

    number_list.sum
  end
end