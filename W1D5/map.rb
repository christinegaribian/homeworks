class Map

  def initialize(pairs = [])
    @key_value_pairs = pairs
  end

  def assign(key, value)
    target_index = find_index_of_key(key)

    target_index ? @key_value_pairs[target_index][1] = value : @key_value_pairs << [key, value]
  end

  def find_index_of_key(key)
      @key_value_pairs.index {|pair| pair.first == key}
  end

  def lookup(key)
    @key_value_pairs[find_index_of_key(key)][1]
  end

  def remove(key)
    @key_value_pairs.delete_at(find_index_of_key(key))
  end

  def show
    p @key_value_pairs
  end
end

map = Map.new([["a", "1st"], ["b","2nd"]])
map.show
map.assign("c","3rd")
map.show
p map.lookup("b")
# map.show
map.remove("a")
map.show
