class Student

  attr_accessor :name, :location, :twitter, :linkedin, :github, :blog, :profile_quote, :bio, :profile_url 

  @@all = []

  def initialize(student_hash)
    self.name = student_hash[:name] 
    self.location = student_hash[:location]
    @@all << self
  end

  def self.create_from_collection(students_array)
    hash = students_array.each { |v| v } 
    new_hash = hash[:name.to_s.to_i]
    self.new(new_hash)
  end

  def add_student_attributes(attributes_hash)
    self.twitter = attributes_hash[:twitter]
    self.linkedin = attributes_hash[:linkedin]
    self.github = attributes_hash[:github]
    self.blog = attributes_hash[:blog]
    self.profile_quote = attributes_hash[:profile_quote]
    self.bio = attributes_hash[:bio]
  end

  def self.all
    @@all
  end
end

