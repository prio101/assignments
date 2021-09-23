class SubArray
  # Provide get/set accessors
  attr_reader :start, :end, :sum
  attr_writer :sum

  def initialize
    @start = 0
    @end = 0
    @sum = 0
  end

  # Set boundaries of the sub-array
  def set_bounds(list_start, list_end)
    @start, @end = list_start, list_end
  end
end

class ChallengeTwoClone
  attr_reader :elements
  
  def initialize elements = [ 2, -4, 6, 8, -10, 100, -6, 5 ]
    @elements = elements
  end

  def find
    max = SubArray.new
    cur = SubArray.new

    for i in 0...@elements.size
      cur.sum = cur.sum + @elements[i]

      if(cur.sum > max.sum)
        max.sum = cur.sum
        cur.set_bounds(cur.start, i)
        max.set_bounds(cur.start, i)
      elsif(cur.sum < 0)
        cur.sum = 0
        cur.set_bounds(i + 1, i + 1)
      end
    end

    puts @elements.slice(max.start, max.end - max.start + 1)
    @elements.slice(max.start, max.end - max.start + 1)
  end
end
