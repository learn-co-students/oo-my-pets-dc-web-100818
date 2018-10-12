require 'pry'
class Owner
  attr_accessor :name, :pets 
  attr_reader :species 
  
  @@all = []
  
  def initialize(name)
    @name = name 
    @@all << self 
    @pets = {
      :fishes => [],
      :dogs => [],
      :cats => []
    } 
  end 
  
  def self.all 
    @@all
  end 
  
  def self.count
    self.all.count
  end 
  
  def self.reset_all 
    self.all.clear 
  end 
  
  def species 
    @species = "human"
  end 
  
  def say_species
    "I am a #{species}."
  end 
  
  def name
    @name  
  end 
  
  def pets 
    @pets
  end 
  
  def buy_fish(name)
    self.pets[:fishes] << Fish.new(name)
  end 
  
  def buy_cat(name)
    self.pets[:cats] << Cat.new(name)
  end 
  
  def buy_dog(name)
    self.pets[:dogs] << Dog.new(name)
  end 
  
  def walk_dogs
    self.pets[:dogs].collect do |dog|
      dog.mood = "happy"
    end 
  end 
  
  def play_with_cats
    self.pets[:cats].collect do |cat|
      cat.mood = "happy"
    end 
  end 
  
  def feed_fish
    self.pets[:fishes].collect do |fish|
      fish.mood = "happy"
    end 
  end 
  
  def sell_pets
    self.pets.collect do |type, pets|
      pets.each do |pet|
        pet.mood = "nervous"
      end 
      pets.clear 
    end 
  end 
  
  def list_pets
    num_fish = self.pets[:fishes].length 
    num_cat = self.pets[:cats].length
    num_dog = self.pets[:dogs].length 
    
    "I have #{num_fish} fish, #{num_dog} dog(s), and #{num_cat} cat(s)."
  end 
  
end



