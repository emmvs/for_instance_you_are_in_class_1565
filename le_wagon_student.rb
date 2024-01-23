require "pry-byebug"

class LeWagonStudent
  # Reader | Writer | Accessors
  attr_accessor :name, :bootcamp, :reboot, :week

  # Data / state => instance variables
  def initialize(name, bootcamp, reboot = false, week = nil)
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
    @week = week if week.between?(1, 9)
  end
end

vio = LeWagonStudent.new("Vio", "Web Dev")

# binding.pry

vio.set_week(2)

# binding.pry
