class PolyTreeNode
  
  attr_reader :children, :value, :parent

  def initialize(value)
    @value = value
    @parent = nil
    @children = []
  end

  def parent=(new_parent)
    old_parent = @parent
    @parent = new_parent
    
    # add the children to the new parent if the child is not there already
    if @parent && !@parent.children.include?(self)
      self.parent.children << self
    end

    # Delete child from the old parent if it is not nil and is not the new parent
    if old_parent && old_parent != @parent
      old_parent.children.delete(self)
    end
  end
end