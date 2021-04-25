# PHASE 2
def convert_to_int(str)
  Integer(str)
end

# PHASE 3
FRUITS = ["apple", "banana", "orange"]

class CoffeeError < StandardError
  def message
    "You've given coffee. Try again."
  end
end

class NotFruitError < StandardError
  def message
    "Not a fruit."
  end
end

def reaction(maybe_fruit)
  if FRUITS.include? maybe_fruit
    puts "OMG, thanks so much for the #{maybe_fruit}!"
  elsif maybe_fruit == 'coffee'
    raise CoffeeError
  else 
    raise NotFruitError
  end 
end

def feed_me_a_fruit
  puts "Hello, I am a friendly monster. :)"

  begin 
    puts "Feed me a fruit! (Enter the name of a fruit:)"
    maybe_fruit = gets.chomp
    reaction(maybe_fruit) 
  rescue CoffeeError => e
    p e.message
  rescue NotAFruitError => e
    p e.message
  end
end  

# PHASE 4
class BestFriend
  def initialize(name, yrs_known, fav_pastime)
    raise ArgumentError.new("'name' can't be blank") if name.empty?
    raise ArgumentError.new("'yrs_known' must be at least 5") if yrs_known.to_i < 5
    raise ArgumentError.new("'fav_pasttime' can't be blank") if fav_pastime.empty?
    @name = name
    @yrs_known = yrs_known.to_i
    @fav_pastime = fav_pastime
  end

  def talk_about_friendship
    puts "Wowza, we've been friends for #{@yrs_known}. Let's be friends for another #{1000 * @yrs_known}."
  end

  def do_friendstuff
    puts "Hey bestie, let's go #{@fav_pastime}. Wait, why don't you choose. 😄"
  end

  def give_friendship_bracelet
    puts "Hey bestie, I made you a friendship bracelet. It says my name, #{@name}, so you never forget me." 
  end
end


