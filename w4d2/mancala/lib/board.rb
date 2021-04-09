class Board
  attr_accessor :cups

  def initialize(name1, name2)
    @cups = Array.new(14) { [] }
    place_stones
    @player1 = name1
    @player2 = name2
    @stores = {name1 => 6, name2 => 13}
  end

  def place_stones
    # helper method to #initialize every non-store cup with four stones each
    (0...@cups.length).each { |i| @cups[i].concat([:stone] * 4) if (i != 6 && i != 13) }
  end

  def valid_move?(start_pos)

  end

  def make_move(start_pos, current_player_name)
    start_pos += 1 if (0..5).include?(start_pos)


  end

  def next_turn(ending_cup_idx)
    # helper method to determine whether #make_move returns :switch, :prompt, or ending_cup_idx
    # figure out different indices first 
    # if @current_player = @name1

    #   store_idx = 6
    # else
    #   store_idx = 13
    # end




    # if ending_cup_idx == store_idx

  end

  def render
    print "      #{@cups[7..12].reverse.map { |cup| cup.count }}      \n"
    puts "#{@cups[13].count} -------------------------- #{@cups[6].count}"
    print "      #{@cups.take(6).map { |cup| cup.count }}      \n"
    puts ""
    puts ""
  end

  def one_side_empty?
    @cups[0..5].all? { |cup| cup.empty? } || @cups[7..12].all? { |cup| cup.empty? }
  end

  def winner
    if one_side_empty?
      if @cups[6].count > @cups[13].count
        return @name1
      else 
        return @name2
      end
    end
  end
end
