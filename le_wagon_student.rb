# Object Oriented Class
# Datatypes = Object

# String
# Integer
# Float
# Boolean (True & False)
# Array
# Hash
# ...

# Representation of real-life Objects
# >> Datatypes that are out of the scope of the common ones

# Book.new
# Photo.new
# Sign.new(
#   video: "/video.mp3",
#   language: "ger",
#   notes: "This sign has two meanings")

# class Book
# end

# book = Book.new
# student = LeWagonStudent.new

# p book
# p student

# Methods do things
# Instances know things

require "pry-byebug"
# require_relative # to access your own code

# snake_case🐍
# CamelCase🐫
class LeWagonStudent
  # Reader | Writer | Accessors
  # attr_writer :password
  attr_accessor :bootcamp, :week
  attr_reader :name, :reboot

  # Data / state => instance variables
  def initialize(name, bootcamp, reboot = false, week = nil)
    # Instance variable
    @name = name
    @bootcamp = bootcamp
    @reboot = reboot
    @week = week
  end

  # binding.pry

  # Behavior => instance methods
  def introduce
    "Hi, I'm #{name}, a student at the #{bootcamp} and in week #{week}!"
  end

  def needs_reboot?
    @week == 2
  end

  def set_week(week)
    @week = week # if week.between?(1, 9)
  end
end

vio = LeWagonStudent.new("Vio", "Web Dev")

# binding.pry

vio.set_week(2)

# binding.pry
