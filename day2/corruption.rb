require 'csv'

class Corruption
  def initialize(filepath)
    @csv = CSV.read(filepath, col_sep: " ").map { |row| row.map(&:to_i) }
  end

  def checksum
    @csv.inject(0) do |sum, row|
      sum += row.max - row.min
    end
  end
end
