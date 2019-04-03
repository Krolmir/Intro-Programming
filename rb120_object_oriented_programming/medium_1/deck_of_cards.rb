require 'pry'

class Card
  include Comparable
  attr_reader :rank, :suit
  
  VALUES = { 'Jack' => 11, 'Queen' => 12, 'King' => 13, 'Ace' => 14 }

  def initialize(rank, suit)
    @rank = rank
    @suit = suit
  end
  
  def <=> other
    self.value <=> other.value
  end

  def value
    VALUES.fetch(@rank, @rank)
  end
  
  def to_s
    "#{rank} of #{suit}"
  end
end

class Deck
  attr_reader :cards

  RANKS = ((2..10).to_a + %w(Jack Queen King Ace)).freeze
  SUITS = %w(Hearts Clubs Diamonds Spades).freeze
  
  def initialize
    @cards = []
    reset_deck
  end



  def draw
    reset_deck if @cards.empty?
    @cards.pop
  end
  
  private

  def reset_deck
    create_deck
    shuffle_deck
  end
  
  def shuffle_deck
    @cards.shuffle!
  end

  def create_deck
    RANKS.each do |rank|
      SUITS.each do |suit|
        @cards << Card.new(rank, suit)
      end
    end
  end
end

deck = Deck.new
deck.cards
drawn = []
52.times { drawn << deck.draw }
p drawn.count { |card| card.rank == 5 } == 4
p drawn.count { |card| card.suit == 'Hearts' } == 13

drawn2 = []
52.times { drawn2 << deck.draw }

p drawn != drawn2 # Almost always.