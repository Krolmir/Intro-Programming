require 'pry'

class CircularQueue
  attr_accessor :arr
  
  
  
  def initialize(size)
    @arr = []
    size.times { @arr << nil }
    @position = 0
    @size = size
    @oldest_object = 0
  end
  
  def increase(n)
    n += 1
  end

  def reset_position?(n)
    n == @size
  end
  
  def reset_position(n)
    n = 0
  end
  
  def enqueue(num)
    if arr[@position] != nil
      @oldest_object = increase(@oldest_object)
      @oldest_object = reset_position(@oldest_object) if reset_position?(@oldest_object)
    end
    arr[@position] = num
    # binding.pry
    @position = increase(@position)
    @position = reset_position(@position) if reset_position?(@position)
  end

  def dequeue()
    return nil if arr[@oldest_object] == nil 
   #  binding.pry
    num = arr[@oldest_object]
    arr[@oldest_object] = nil
    @oldest_object = increase(@oldest_object)
    @oldest_object = reset_position(@oldest_object) if reset_position?(@oldest_object)
    num
  end
end



# Examples

queue = CircularQueue.new(3)
p queue.arr
puts queue.dequeue == nil

queue.enqueue(1)
p queue.arr
queue.enqueue(2)
p queue.arr
puts queue.dequeue == 1
p queue.arr
queue.enqueue(3)
p queue.arr
queue.enqueue(4)

puts queue.dequeue == 2
p queue.arr
queue.enqueue(5)
p queue.arr
queue.enqueue(6)
p queue.arr
queue.enqueue(7)
p queue.arr
puts queue.dequeue == 5
p queue.arr
puts queue.dequeue == 6
p queue.arr
puts queue.dequeue == 7
p queue.arr
puts queue.dequeue == nil
p queue.arr


queue = CircularQueue.new(4)
puts queue.dequeue == nil

queue.enqueue(1)
queue.enqueue(2)
puts queue.dequeue == 1

queue.enqueue(3)
queue.enqueue(4)
puts queue.dequeue == 2

queue.enqueue(5)
queue.enqueue(6)
queue.enqueue(7)
puts queue.dequeue == 4
puts queue.dequeue == 5
puts queue.dequeue == 6
puts queue.dequeue == 7
puts queue.dequeue == nil