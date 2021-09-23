# I am not submitting this one
# I am not feeling good about this one.


class SubArray
  attr_accessor :start, :end, :sum

  def initialize
    @start = 0
    @end = 0
    @sum = 0
  end

  def set_bounds(list_start, list_end)
    @start, @end = list_start, list_end
  end
end

class ChallengeTwo
  attr_reader :elements
  
  def initialize elements
    @elements = elements
  end

  def max_sub_array
    max = SubArray.new
    cur = SubArray.new

    for i in 0...@elements.size
      puts cur.sum
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
    
    "#{max.start} to #{((max.end - max.start) + 2)}" 
  end
end
