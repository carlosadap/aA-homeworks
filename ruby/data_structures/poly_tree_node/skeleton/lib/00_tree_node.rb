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

  def add_child(child_node)
    child_node.parent = self
  end

  def remove_child(child_node)
    if child_node && !self.children.include?(child_node)
      raise "Tried to remove node that isn't a child"
    end

    child_node.parent = nil
  end
end