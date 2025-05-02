class StringCalculator
  def self.add(input)
    return 0 if input.strip.empty?
    return input.to_i if input.match?(/^\d+$/)
  end
end