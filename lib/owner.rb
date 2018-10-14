class Owner
  attr_accessor :name, :fish, :cat, :dog, :pets
  attr_reader :species
  @@all = []

  def initialize(species)
    @species = species
    self.class.all << self
    @pets = {:fishes => [], :dogs => [], :cats => []}
  end

  def self.all
    @@all
  end

  def self.count
    self.all.length
  end

  def self.reset_all
    self.all.clear
  end

  def say_species
    "I am a #{@species}."
  end

  def buy_fish(name)
    @pets[:fishes] << Fish.new(name)
  end

  def buy_cat(name)
    @pets[:cats] << Cat.new(name)
  end

  def buy_dog(name)
    @pets[:dogs] << Dog.new(name)
  end

  def walk_dogs
    @pets[:dogs].each {|dog| dog.mood = 'happy'}
  end

  def play_with_cats
    @pets[:cats].each {|cat| cat.mood = 'happy'}
  end

  def feed_fish
    @pets[:fishes].each {|fish| fish.mood = 'happy'}
  end

  def sell_pets
    @pets.each do |type, pet_arr|
      pet_arr.each do |pet|
        pet.mood = 'nervous'
      end
      pet_arr.clear
    end
  end

  def list_pets
    fish_num = @pets[:fishes].length
    dog_num = @pets[:dogs].length
    cat_num = @pets[:cats].length
    "I have #{fish_num} fish, #{dog_num} dog(s), and #{cat_num} cat(s)."
  end

end
