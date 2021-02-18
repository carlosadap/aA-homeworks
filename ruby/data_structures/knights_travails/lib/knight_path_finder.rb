class KnightPathFinder
  def self.valid_moves(pos)

  end

  def initialize(pos)
    @starting_position = pos
    @root_node = @starting_position
    @considered_positions = []
  end

  def build_move_tree

  end

  def find_path

  end

  def new_move_positions(pos)
    KnightPathFinder.valid_moves(pos)
  end
end