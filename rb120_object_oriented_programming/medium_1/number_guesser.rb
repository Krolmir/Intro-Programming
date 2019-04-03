require 'pry'

class GuessingGame
  attr_reader :secret_num, :bottom_range, :top_range
  attr_accessor :guess_counter, :guess

  def initialize(range1, range2)
    @bottom_range = range1
    @top_range = range2
    @secret_num = nil
    @guess_counter = Math.log2(size_of_range).to_i + 1
    @guess = ''
  end
  
  def size_of_range
    top_range - bottom_range
  end

  def play
    @secret_num = rand(bottom_range..top_range)

    @guess_counter.times do
      display_guess_counter

      loop do
        display_user_prompt
        @guess = gets.chomp
        break if valid_input? && @guess.to_i.to_s == @guess
        display_invalid_input
      end
      
      @guess = @guess.to_i
      check_input
      break if check_win?
      decrement_guess_counter
      display_out_of_guesses if @guess_counter == 0
    end
    display_win_lose
  end

  def decrement_guess_counter
    @guess_counter -= 1
  end

  def result
    if low?
      puts "Your guess is too low."
    elsif high?  
      puts "Your guess is too high."
    elsif win?
      puts "That's the number."
    end
  end

  def display_out_of_guesses
    puts "You are out of guesses."
  end

  def display_guess_counter
    puts "You have #{guess_counter} guesses remaining."
  end

  def display_user_prompt
    puts "Enter a number between #{bottom_range} and #{top_range}: "
  end

  def display_invalid_input
    puts "Invalid guess."
  end

  def valid_input?
    (bottom_range..top_range).include?(@guess.to_i)
  end

  def check_input
    if secret_num > @guess
      display_lower_message
    elsif secret_num < @guess
      display_higher_message
    else
      display_win_message
    end
  end

  def check_win?
    @guess == secret_num
  end

  def display_lower_message
    puts "Your guess is too low."
  end

  def display_higher_message
    puts "Your guess is too high."
  end

  def display_win_message
    puts "That's the number."
  end

  def display_win_lose
    if check_win?
      puts "You win!"
    else
      puts "You lost."
    end
  end  
end

# game = GuessingGame.new
# game.play

game = GuessingGame.new(501, 1500)
game.play

