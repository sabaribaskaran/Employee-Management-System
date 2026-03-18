class CustomRange
  attr_reader :start_range, :end_range
  def initialize(start_range, end_range)
    @start_range = start_range
    @end_range = end_range
  end

  def square_numbers
    return 'Range cannot be blank' if start_range.nil? || end_range.nil?
    return 'Range cannot be negative / zero' if start_range <= 0 || end_range <= 0
    return 'Invalid Range' if end_range < start_range

    first = Math.sqrt(start_range).ceil
    last = Math.sqrt(end_range).floor
    (first..last).map {|element| element * element }
  end

end