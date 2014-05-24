ARGV.map!{|c| c.downcase.strip}
class Deck
  def initialize
    self.new
  end

  def new
    @cards = ["2","3","4","5","6","7","8","9","10","J","Q","K","A"]
    @suits = ['Clubs','Diamonds','Spades','Hearts']
    @newDeck = []
      @cards.each do |card|
      @suits.each do  |suit|
        @newDeck.push(card + '-' + suit)
      end
    end
  end

  def freshDeck
    return  @newDeck
  end

  def shuffle
    shuffledDeck =  @newDeck.shuffle

    shuffledDeck.each do  |card|
      puts card
    end
  end

  def pickcard
    puts @newDeck.sample
  end

  def getCount
    puts @newDeck.count
  end
end

deck = Deck.new

if ARGV.empty?
  freshDeck = deck.freshDeck
  freshDeck.each { |card| puts card }
elsif ARGV.include?('pickcard')
  deck.pickcard
elsif ARGV.include?('shuffle')
  deck.shuffle
else  ARGV.include?('count')
  deck.getCount
end