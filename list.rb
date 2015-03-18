class Node
  def initialize(val)
    @val = val
    @next = nil
  end

  attr_accessor :val
  attr_accessor :next

  def add_to_tail val
    if @next == nil
      @next = Node.new(val)
    else
      @next.add_to_tail(val)
    end
  end

  def delete val
    if @next == nil
      return nil
    elsif @next.val == val
      if @next.next == nil
        @next = nil
      else
        @next = @next.next
      end
    else
      if @next == nil
        return nil
      end
      @next.delete(val)
    end
  end

  def length
    if @next == nil
      1
    else
      1 + @next.length
    end
  end

  def to_s
    if @next == nil
      "#{@val}"
    else
      "#{@val} #{@next}"
    end
  end
end

head = Node.new("d")
head.add_to_tail("o")
head.add_to_tail("g")
head.add_to_tail("e")
head.add_to_tail("s")
head.delete("s")
puts head.to_s
puts head.length