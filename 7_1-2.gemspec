Gem::Specification.new do |gem|
	gem.name = "7_1-2"
	gem.version = ENV['TRAVIS_TAG']
	gem.version = ENV['TRAVIS_BUILD_ID'] if ENV['TRAVIS_TAG'] == ""
	gem.author = "Zachary Perlmutter"
	gem.email = "zrp200@gmail.com"
	gem.homepage = "http://github.com/zrp200/7_1-2"
	gem.add_development_dependency "rspec"
	gem.add_development_dependency "rspec-its"
	gem.executables << "7_1/2"
	gem.summary = "The game of 7\u00bd"
	gem.add_runtime_dependency "card_deck", "~> 2.0"
	gem.files = %w(lib/hand.rb lib/deck.rb lib/card.rb)
end