# An octupus wants to eat the longest fish in an array of fish.



## Sluggish Octupus
# Find the longest fish in O(n^2) time
# Method: Compare all fish lengths to all other fish lengths

def sluggish_octupus(array)
  longest_fish = nil

  array.length.times do |i|
    array.length.times do |j|
        if array[i].length > array[j].length
          if longest_fish.nil? || longest_fish.length < array[i].length
            longest_fish = array[i]
          end
        end
    end
  end

  longest_fish
end

## Dominant Octupus
# Find the longest fish in O(n log n) time
# Method: Mergesort into increasing order and return last element

 def dominant_octupus(array)
   array.merge_sort { |x, y| x.length <=> y.length }[-1]
 end

 class Array
   def merge_sort(&prc)
     # See how I create a Proc if no block was given; this eliminates
     # having to later have two branches of logic, one for a block and
     # one for no block.
     prc ||= Proc.new { |x, y| x <=> y }

     return self if count <= 1

     midpoint = count / 2
     sorted_left = self.take(midpoint).merge_sort(&prc)
     sorted_right = self.drop(midpoint).merge_sort(&prc)

     Array.merge(sorted_left, sorted_right, &prc)

   end

   private
   def self.merge(left, right, &prc)
     merged = []

     until left.empty? || right.empty?
       case prc.call(left.first, right.first)
       when -1
         merged << left.shift
       when 0
         merged << left.shift
       when 1
         merged << right.shift
       end
     end

     merged.concat(left)
     merged.concat(right)

     merged
   end
 end

## Clever Octupus
# Finds the longest fish in O(n) time
 def clever_octupus(array)
   longest = nil

   array.each do |fish|
     if longest.nil? || fish.length > longest.length
       longest = fish
     end
   end

   longest
 end

## Dancing Octupus
# Full of fish, the Octopus attempts Dance Dance Revolution. The game has tiles in the following directions:
# ["up", "right-up", "right", "right-down", "down", "left-down", "left",  "left-up" ]
# To play the game, the octopus must step on a tile with her corresponding tentacle. We can assume that the octopus's eight tentacles are numbered and correspond to the tile direction indices.


## Slow Dance
# Given a tile direction, iterate through a tiles array to return the tentacle number (tile index) the octupus must move.
# This should take O(n) time

def slow_dance(direction, tiles_array)
  tiles_array.each_index  do |square|
    return square if tiles_array[square] == direction
  end

  nil
end

## Constance Dance
# Help the octupus dance faster
# Use a different data structure and write a function so that you can access the tentacle number in O(1) time

def fast_dance(direction, tiles)
  tiles[direction]
end







fishes = ['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh']

p sluggish_octupus(fishes)
p dominant_octupus(fishes)
p clever_octupus(fishes)


tiles_array = ["up", "right-up", "right", "right-down", "down", "left-down", "left",  "left-up" ]
p slow_dance("up", tiles_array)
p slow_dance("right-down", tiles_array)

new_tiles_data_structure = Hash.new{ Array.new }
tiles_array.each_with_index do |fish, index|
  new_tiles_data_structure[fish] = index
end

p fast_dance("up", new_tiles_data_structure)
