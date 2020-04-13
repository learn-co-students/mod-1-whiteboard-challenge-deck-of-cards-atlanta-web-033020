require 'pry'

class Deck
  attr_reader :card_array

  def initialize
    @card_array = []
    values = ["A", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K"]
    suits = ["Hearts", "Clubs", "Diamonds", "Spades"]

    values.each do |v|
      suits.each do |s|
        card_array << Card.new(v, s)
      end
    end
  end

  def choose_card
    card_array.delete(card_array.sample)
  end
end

class Card
  attr_reader :value, :suit

  def initialize(value, suit)
    @value = value
    @suit = suit
  end
end

binding.pry
