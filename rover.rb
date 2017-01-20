class Rover
  attr_reader :x_position, :y_position, :heading
  attr_accessor :read_instruction

  def initialize(x_position, y_position, heading)
    @x_position = x_position.to_i
    @y_position = y_position.to_i
    @heading = heading.to_s
  end


  def read_instruction(instruction_string)
      commands=instruction_string.split("")
      commands.each do |dir|
        if dir == 'l' || dir == 'r'
          turn(dir)
        elsif dir == 'm'
          move
        end
      end
  end

  def move
    case @heading
    when 'N'
      @y_position+=1
    when 'E'
      @x_position+=1
    when 'S'
      @y_position-=1
    when 'W'
      @x_position-=1
    end
  end

  def turn(dir)
    if dir == 'l'
      case @heading
      when 'N'
        @heading = 'W'
      when 'E'
        @heading = 'N'
      when 'S'
        @heading = 'E'
      when 'W'
        @heading = 'S'
      end
    elsif dir == 'r'
      case @heading
      when 'N'
        @heading ='E'
      when 'E'
        @heading ='S'
      when 'S'
        @heading = 'W'
      when 'W'
        @heading = 'N'
        end
    end
  end
end

class MissionControl

  def initialize
  end

  def rover_instructions(inst, rover)
      rover.read_instruction(inst)
  end

  def report(rover)
      "#{rover.x_position}x,#{rover.y_position}y, #{rover.heading}"
  end
end


mc=MissionControl.new
rover1=Rover.new(1,2,"N")
rover2=Rover.new(3,3,"E")
mc.rover_instructions("lmlmlmlmm",rover1)
mc.rover_instructions("mmrmmrmrrm",rover2)

mc.report(rover1)
mc.report(rover2)
puts "Rover 1:#{mc.report(rover1)}"
puts "Rover 2:#{mc.report(rover2)}"
