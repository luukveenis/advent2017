require 'pry'

module Captcha
  def self.sum(input)
    input.chars.each.with_index.inject(0) do |sum, (char, index)|
      char == input[(index + 1) % input.length] ? sum += char.to_i : sum
    end
  end
end
