class Fish
  attr_accessor :mood
  attr_reader :name
  # code goes here
  def initialize(name, mood = "nervous")
    @name = name
    @mood = mood
  end
end