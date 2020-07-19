class Node
  attr_accessor :value, :next_node
  def initialize(value = nil)
    @value = value
    @next_node = nil
  end
end

class LinkedList
  attr_reader :head
  
  def initialize
    @head = nil
  end

  def append(value)
    node = Node.new(value)
    if @head.nil?
      @head = node
    else
      temp = @head
      until temp.next_node.nil?
        temp = temp.next_node
      end
      temp.next_node = node
    end
  end

  def prepend(value)
    node = Node.new(value)
    if @head.nil?
      @head = node
    else
      node.next_node = @head
      @head = node
    end
  end

  def size
    size = 0
    if @head.nil?
      size
    else
      temp = @head
      size = 1
      until temp.next_node.nil?
        size += 1
        temp = temp.next_node
      end
      size
    end
  end

  def head
    return nil if @head.nil?
    @head
  end

  def tail
    return nil if head.nil?
    temp = @head
    until temp.next_node.nil?
      temp = temp.next_node
    end
    temp
  end

  def at(index)
    raise "The list is empty" if @head.nil?
    count = 0
    temp = @head
    until temp.nil?
      return temp.value if count.eql?(index)
      count += 1
      temp = temp.next_node
    end
  end

  def pop
    raise "The list is empty" if @head.nil?
    current = @head
    previous = nil
    until current.next_node.nil?
      previous = current
      current = current.next_node
    end
    previous.next_node = current.next_node
  end

  def contains?(value)
    temp = @head
    count = 0
    until temp.nil?
      return true if temp.value.eql?(value)
      temp = temp.next_node
    end
    return false
  end

  def find(value)
    raise "The list is empty" if @head.nil?
    count = 0
    temp = @head
    until temp.nil?
      return count if temp.value.eql?(value)
      count += 1
      temp = temp.next_node
    end
  end

  def to_s
    string = ''
    temp = @head
    until temp.nil?
      string += "( #{temp.value} ) -> "
      temp = temp.next_node
    end
    string += 'nil'
  end

  def insert_at(value, index)
    node = Node.new(value)
    raise "The list is empty" if @head.nil?
    count = 0
    current = @head
    previous = nil
    until current.nil?
      if count.eql?(index) && index.zero?
        prepend(value)
      elsif count.eql?(index)
        previous.next_node = node
        node.next_node = current
      end
      previous = current
      current = current.next_node
      count += 1
    end
  end

  def remove_at(index)
    raise "The list is empty" if @head.nil?
    count = 0
    current = @head
    previous = nil
    until current.nil?
      if count.eql?(index) && index.zero?
        @head = @head.next_node
      elsif count.eql?(index)
        previous.next_node = current.next_node
      end
      previous = current
      current = current.next_node
      count += 1
    end
  end
end
