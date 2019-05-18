require 'rb-readline'
require 'pry'

class Owner
  attr_reader :species
  attr_accessor :pets, :name
  @@all = []

  def initialize(species)
    @species = species
    @pets = { fishes: [], cats: [], dogs: [] }
    self.class.all << self
  end

  def self.all
    @@all
  end

  def self.count
    self.all.size
  end

  def self.reset_all
    self.all.clear
  end

  def say_species
    "I am a human."
  end

  def buy_fish(name)
    fish = Fish.new(name)
    self.pets[:fishes] << fish
  end

  def buy_cat(name)
    cat = Cat.new(name)
    self.pets[:cats] << cat
  end

  def buy_dog(name)
    dog = Dog.new(name)
    self.pets[:dogs] << dog
  end

  def walk_dogs
    self.pets[:dogs].each do |dog|
      dog.mood = "happy"
    end
  end

  def play_with_cats
    self.pets[:cats].each do |cat|
      cat.mood = "happy"
    end
  end

  def feed_fish
    self.pets[:fishes].each do |fish|
      fish.mood = "happy"
    end
  end

  def sell_pets
    self.pets.each do |pet_type, pets_array|
      pets_array.each do |pet|
        pet.mood = "nervous"
      end
      pets_array.clear
    end
  end

  def list_pets
    fish_count = self.pets[:fishes].count
    dog_count = self.pets[:dogs].count
    cat_count = self.pets[:cats].count

    "I have #{fish_count} fish, #{dog_count} dog(s), and #{cat_count} cat(s)."
  end

end
