class Simon
  COLORS = %w(red blue green yellow)

  attr_accessor :sequence_length, :game_over, :seq

  def initialize
    @game_over = false
    @sequence_length = 1
    @seq = []
  end

  def play
    until @game_over
      take_turn
      @sequence_length += 1
    end

    game_over_message
    reset_game
  end

  def take_turn
    show_sequence
    answer = require_sequence
    round_success_message
    @sequence_length += 1 unless @game_over

    check_sequence(answer)
  end

  def show_sequence
    system("clear")

    sleep(1)
    add_random_color
    @seq.each do |color|
      puts "Simon says: #{color}"
      sleep(1)
      system("clear")
      sleep(0.5)
    end
  end

  def require_sequence


    inputs = []
    until inputs.length == @seq.length
      puts "Now repeat this sequence one color at a time "
      print "Enter a color: "
      inputs << gets.chomp
      system("clear")
    end

    inputs
  end

  def check_sequence(guess)
    unless guess == @seq
      @game_over = true
    end
  end

  def add_random_color
    @seq << COLORS.sample
  end

  def round_success_message
    "Noiiiiccceeee"
  end

  def game_over_message
    puts "You lost! Try again"
  end

  def reset_game
    @sequence_length = 1
    @game_over = false
    @seq = []
  end
end

if __FILE__ == $PROGRAM_NAME
  game = Simon.new
  game.play
end
