class PolyTreeNode
  
  attr_reader :children, :value, :parent

  def initialize(value)
    @value = value
    @parent = nil
    @children = []
  end

  def parent=(new_parent)
    @parent = new_parent
    self.parent.children << self unless self.parent.nil?
  end
end