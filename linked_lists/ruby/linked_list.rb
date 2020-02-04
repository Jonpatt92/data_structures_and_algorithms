require 'pry'
# require './linked_list/ruby/node'

class LinkedList
  attr_reader :nodes, :head

  def initialize
    @head = nil
    @nodes = []
  end

  def to_a
    @nodes.map {|node| node.data }
  end

  def push(node_data)
    new_node = Node.new(node_data)
    @head = new_node if !@head
    add_node(new_node)
  end

  def pop
    if popped_node = @nodes.pop
      popped_node.data
    else
      nil
    end
  end

  def delete(data)
    @nodes.delete_if {|node| node.data == data}
    # @head = @nodes.first if !@head
  end

  def count
    @nodes.count
  end

  def add_node(node)
    previous_node = @nodes.last if @nodes != []
    @nodes << node
    previous_node.assign_next_node(node) if previous_node
  end
end
