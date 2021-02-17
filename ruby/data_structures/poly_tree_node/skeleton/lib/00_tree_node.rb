class PolyTreeNode
  attr_accessor :parent
  attr_reader :children, :value

  def initialize(value)
    @value = value
    @parent = nil
    @children = []
  end
end