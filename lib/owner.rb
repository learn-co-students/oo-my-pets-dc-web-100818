require 'pry'

class Owner
  attr_accessor :owner, :name, :pets
  attr_reader :species
  @@all = []

  def initialize(owner)
    @owner = owner
    @species = "human"
    @pets = {:fishes=>[], :dogs=>[], :cats=>[]}
    @@all << self
  end

  def self.all
    @@all
  end

  def self.count
    @@all.count
  end

  def self.reset_all
    @@all.clear
  end

  def say_species
    "I am a #{@species}."
  end

  def buy_fish(name)
    fish = Fish.new(name)
    @pets[:fishes] << fish
  end

  def buy_cat(name)
    cat = Cat.new(name)
    @pets[:cats] << cat
  end

  def buy_dog(name)
    dog = Dog.new(name)
    @pets[:dogs] << dog
  end

  def walk_dogs
    @pets[:dogs].collect do |dog|
      dog.mood = "happy"
   end
  end

  def play_with_cats
    @pets[:cats].collect do |cat|
      cat.mood = "happy"
   end
  end

  def feed_fish
    @pets[:fishes].collect do |fish|
    fish.mood = "happy"
   end
  end

  def sell_pets
    @pets.each do |type, pets|
     pets.each do |animal|
     animal.mood = "nervous"
        end
       end
   @pets.each do |type, pets|
     pets.clear
   end
  end

  def list_pets
    "I have #{@pets[:fishes].length} fish, #{@pets[:dogs].length} dog(s), and #{@pets[:cats].length} cat(s)."
  end

end
