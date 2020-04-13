class Deck
  attr_reader :cards

  def initialize
    @cards = []
    values = ["A", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K"]
    suits = ["Hearts", "Clubs", "Diamonds", "Spades"]

    values.each do |v|
      suits.each do |s|
        cards << Card.new(v, s)
      end
    end
  end

  def choose_card
    cards.delete(cards.sample)
  end
end

class Card
  attr_reader :suit, :rank

  def initialize(suit, rank)
    @suit = suit
    @rank = rank
  end
end
