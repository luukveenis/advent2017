require 'csv'

class Corruption
  def initialize(filepath)
    @csv = CSV.read(filepath, col_sep: " ", converters: :integer)
  end

  def checksum
    @csv.inject(0) do |sum, row|
      sum += row.max - row.min
    end
  end

  def checksum2
    @csv.inject(0) do |sum, row|
      sum += evenly_divide(row)
    end
  end

  private

  def evenly_divide(row)
    row.sort!.reverse!.each_with_index do |num, index|
      divisor = row[(index + 1)..-1].find { |x| num % x == 0 }

      return (num / divisor) if divisor
    end
  end
end
