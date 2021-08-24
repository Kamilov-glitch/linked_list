class LinkedList

	attr_accessor :head

	def initialize(head = nil)
		@head = head
	end
	
	def prepend(value)
		@head = Node.new(value, @head)
	end

	def append(value)
		tmp = @head
		until tmp.link == nil
			tmp = tmp.link
		end
		tmp.link = Node.new value
	end

	def size
		tmp = @head
		num = 1
		until tmp.link == nil
			tmp = tmp.link
			num+=1
		end
		num
	end

	def tail
		tail = @head
		until tail.link == nil
			tail = tail.link
		end
		tail
	end

	def at(index)
		return raise "List is empty" if (head.value == nil && head.link == nil)
		tmp = @head
		num = 0
		until num == index
			return raise "Index not found" if tmp.link == nil
			tmp = tmp.link
			num+=1
		end
		tmp
	end

  def pop
    return_value = self.tail.value
    self.at(self.size - 2).link = nil
    return_value
  end

  def contains?(val)
    return true if @head.value == val
    tmp = @head
    until tmp.link == nil
      tmp = tmp.link
      return true if tmp.value == val
    end
    false
  end


end

class Node

	attr_accessor :value, :link

	def initialize(value = nil, link = nil)
		@value = value
		@link = link
	end

end

head = Node.new 7
my_list = LinkedList.new head
tail = Node.new 8
head.link = tail
my_list.prepend(8)
my_list.append(22)
# p my_list
# puts my_list.head.value
# puts my_list.tail.value
# puts my_list.at(3).value
# puts my_list.pop
# p my_list.size
p my_list.contains?(29)
