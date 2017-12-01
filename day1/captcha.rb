module Captcha
  def self.sum(input)
    input.chars.each.with_index.inject(0) do |sum, (char, index)|
      char == input[(index + 1) % input.length] ? sum += char.to_i : sum
    end
  end

  def self.sum_half(input)
    input.chars.each.with_index.inject(0) do |sum, (char, index)|
      char == input[(index + input.length / 2) % input.length] ? sum += char.to_i : sum
    end
  end
end
