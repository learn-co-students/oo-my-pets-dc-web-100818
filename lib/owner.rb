
require 'pry'

class Owner
  attr_accessor :pets, :name
  attr_reader :species
  # code goes here
  @@all = []
 

  def initialize(species)
    @@all << self
    @species = species
    @pets = {
      fishes: [],
      cats: [],
      dogs: []
    }
    @name
  end

  def self.all 
    @@all
  end

  # can count how many owners have been created
  def self.count
    @@all.length
  end

  # can reset the owners that have been created
  def self.reset_all
    @@all.clear
  end

  # can say its species
  def say_species
    "I am a #{@species}."
  end

  # can buy a fish that is an instance of the Fish class
  # knows about its fishes
  def buy_fish(new_fish_name)
    new_fish = Fish.new(new_fish_name)
    @pets[:fishes] << new_fish
  end

  # can buy a cat that is an instance of the Cat class
  # knows about its cats
  def buy_cat(new_cat_name)
    new_cat = Cat.new(new_cat_name)
    @pets[:cats] << new_cat
  end

  # can buy a dog that is an instance of the Dog class
  # knows about its dogs
  def buy_dog(new_dog_name)
    new_dog = Dog.new(new_dog_name)
    @pets[:dogs] << new_dog
  end

  def walk_dogs
    self.pets[:dogs].each { |dog| dog.mood = "happy"}
  end

  def play_with_cats 
    self.pets[:cats].each { |cat| cat.mood = "happy"}
  end

  def feed_fish
    self.pets[:fishes].each {|fish| fish.mood = "happy"}
  end

  def sell_pets
    self.pets.each do |type, pets|
      pets.map {|pet| pet.mood = "nervous"}
    end
    self.pets.clear
  end

  def list_pets
    "I have #{pets[:fishes].length} fish, #{pets[:dogs].length} dog(s), and #{pets[:cats].length} cat(s)."
  end








end