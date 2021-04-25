class Simon
  COLORS = %w(red blue green yellow)

  attr_accessor :sequence_length, :game_over, :seq

  def initialize
    @sequence_length = 1
    @game_over = false
    @seq = []
  end

  def play
    until @game_over
      take_turn
    end

    game_over_message
    reset_game
  end

  def take_turn
    show_sequence
    require_sequence

    if !@game_over
      round_success_message
      @sequence_length += 1
    end
  end
  
  def show_sequence
    add_random_color
    puts "#{seq}"
  end

  def require_sequence
    puts "Repeat the sequence"
    seq.each do |color|
      user_color = gets.chomp
      if color != user_color
        @game_over = true
        break
      end
    end
  end

  def add_random_color
    @seq << COLORS.sample
  end

  def round_success_message
    "Congrats!"
  end

  def game_over_message
    puts "Game over."
  end

  def reset_game
    @sequence_length = 1
    @game_over = false
    @seq = []
  end
end
