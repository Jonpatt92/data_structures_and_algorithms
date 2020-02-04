class Node < LinkedList
  attr_reader :data, :next_node
  attr_accessor :next_node

  def initialize(data, next_node = nil)
    @data = data
    @next_node = next_node
  end

  def assign_next_node(next_node)
    @next_node = next_node
  end
end
