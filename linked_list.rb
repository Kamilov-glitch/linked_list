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
p my_list