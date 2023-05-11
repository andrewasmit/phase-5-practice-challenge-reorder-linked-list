require_relative './node'

class LinkedList
  attr_accessor :head

  def initialize(head = nil)
    @head = head
  end

  def reorder_linked_list
    return if head.nil?

    odd = head
    even = head.next_node

    even_head = even

    while even && even.next_node
      odd.next_node = even.next_node
      odd = odd.next_node

      even.next_node = odd.next_node

      even = even.next_node
    end
    odd.next_node = even_head
  end


end


# Take 1-2-3-4-5 
# turn it into 1-3-5-2-4

# return is head doesn't have a next node
# make odd and even variables
# Keep track of the even head as head.next_node

# ****FIRST ITERATION****
# odd.next_node = even.next_node (makes the list look like  1 => 3)
# odd (1) = odd.next_node(3)   ('odd' becomes 3)
# even (2) = odd.next_node (4)