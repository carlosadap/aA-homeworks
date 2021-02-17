class Map
  def initialize
    @ivar = []
  end

  def set(key, value)
    @ivar.each do |subarr|
      if subarr[0] == key
        return subarr[1] = value
      end
    end

    @ivar << [key, value]
  end

  def get(key)
    @ivar.each do |subarr|
      if subarr[0] == key
        return subarr[1]
      end
    end
    puts "Element not found"
  end

  def delete(key)
    @ivar.each { |subarr| @ivar.delete(subarr) if subarr[0] == key }
  end

  def show
    @ivar
  end
end