class Board
  attr_accessor :cups, :player1, :player2

  def initialize(name1, name2)
    @player1 = name1
    @player2 = name2
    @cups = Array.new(14) { Array.new }
    place_stones
  end

  def place_stones
    @cups.each_index do |cup_index|
      next if cup_index == 6 || cup_index == 13
      @cups[cup_index] += [:stone, :stone, :stone, :stone]
    end
  end

  def valid_move?(start_pos)
    raise "Invalid starting cup" if start_pos < 0 || start_pos > 12
    raise "Invalid starting cup" if @cups[start_pos].empty?
  end

  def make_move(start_pos, current_player_name)
    stones_in_hand = @cups[start_pos]
    @cups[start_pos] = []

    cup_index = start_pos
    until stones_in_hand.empty?
      cup_index += 1
      cup_index = 0 if cup_index > 13 #cup_index % 13

      if cup_index == 6
        @cups[6] << stones_in_hand.pop if current_player_name == @player1
      elsif cup_index == 13
        @cups[13] << stones_in_hand.pop if current_player_name == @player2
      else
        @cups[cup_index] << stones_in_hand.pop
      end
    end

    self.render
    next_turn(cup_index)
  end

  def next_turn(ending_cup_idx)
    if ending_cup_idx == 6 || ending_cup_idx == 13
      :prompt
    elsif @cups[ending_cup_idx].count == 1
      :switch
    else
      ending_cup_idx
    end 
  end

  def render
    print "      #{@cups[7..12].reverse.map { |cup| cup.count }}      \n"
    puts "#{@cups[13].count} -------------------------- #{@cups[6].count}"
    print "      #{@cups.take(6).map { |cup| cup.count }}      \n"
    puts ""
    puts ""
  end

  def one_side_empty?
    @cups[0..5].all?{|cup| cup.empty? } || @cups[7...13].all?{ |cup| cup.empty?}
  end

  def winner
    if @cups[6].length < @cups[13].length
      return player2
    elsif @cups[6].length > @cups[13].length
      return player1
    else
      return :draw
    end
  end
end
