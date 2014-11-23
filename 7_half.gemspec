Gem::Specification.new do |gem|
	gem.name = "7_half"
	gem.version = ENV['TRAVIS_TAG']
	gem.version = ENV['TRAVIS_BUILD_ID'] if ENV['TRAVIS_TAG'] == ""
	gem.author = "Zachary Perlmutter"
	gem.email = "zrp200@gmail.com"
	gem.homepage = "http://github.com/zrp200/7_half"
	gem.add_development_dependency "rspec"
	gem.add_development_dependency "rspec-its"
	gem.executables << "7_half"
	gem.description = <<DESC
	The is a game played in parts of Africa. It is played with a 30 card deck or a 52 card deck with all the 8s, 9s. and 10s removed. It works like blackjack except you bust at 7\u00bd and face cards are worth \u00bd. You start with one card and play against the dealer.
DESC
	gem.summary = "The game of 7\u00bd"
	gem.add_runtime_dependency "card_deck", "~> 2.0"
	gem.files = %w(lib/hand.rb lib/deck.rb lib/card.rb)
end
