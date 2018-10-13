require 'pry'

class Owner
  
  attr_accessor :human, :name, :pets
  
  @@all = []
  
  def self.all
    @@all
  end 
  
  def initialize(human)
    @human = human
    self.class.all <<  self
    @pets = {:fishes => [], :dogs => [], :cats => []}
  end 
  
  def self.reset_all 
    self.all.clear
  end 
  
  def self.count
    self.all.length
  end 
  
  def species
    self.human
  end 
  
  def say_species
    "I am a #{self.human}."
  end 
  
  def name
    @name
  end 
  
  def buy_fish(fish)
    animal_hash = Fish.new(fish)
    self.pets[:fishes] << animal_hash
  end 
  
  def buy_cat(cat)
    animal_hash = Cat.new(cat)
    self.pets[:cats] << animal_hash
  end 
  
  def buy_dog(dog)
    animal_hash = Dog.new(dog)
    self.pets[:dogs] << animal_hash
  end 
  
  def walk_dogs
    self.pets[:dogs].collect {|animal_hash| animal_hash.mood = "happy"}
  end 
  
  def play_with_cats
    self.pets[:cats].collect {|animal_hash| animal_hash.mood = "happy"}
  end 
  
  def feed_fish
    self.pets[:fishes].collect {|animal_hash| animal_hash.mood = "happy"}
  end 
  
  def sell_pets
    self.pets.collect do |animals|
      animals[1].each {|animal_hash| animal_hash.mood = "nervous"}
    end 
    self.pets.clear
  end 
  
  def list_pets
    "I have #{self.pets[:fishes].count} fish, #{self.pets[:dogs].count} dog(s), and #{self.pets[:cats].count} cat(s)."
  end 
end