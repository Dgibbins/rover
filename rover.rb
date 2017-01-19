# # Next up we'll need to think about behaviour. Behaviours have the ability to
# read and affect the state of an object. We express those as methods.
# #
# # read_instruction should accept an instruction and decide whether to tell the
# rover to move or turn. It simply delegates to more specific behaviour.
# #
# # move affects the position of the rover. Depending on current direction and
# position, you'll need to update the x or y coordinates.
# #
# # turn affects the direction of the rover. Depending on the current direction
#  of the rover, the new direction will be determined with either turning L or R.
# #
# # Once you've figured out how to move and turn your rover, the rest gets much
# easier because you got the seemingly complex stuff out of the way first! All you'll
# need to figure out from here is how to read and split up the instructions so that you
# can pass them on to your rovers.


class Rover
  attr_reader :x_postition, :y_position, :heading
  attr_accessor :move_commands

  def initialize(x_position, y_position, heading)
    @x_position = x_position
    @y_position = y_position
    @heading = heading
  end


  def read_instruction(instructions_string)
      move_commands=instructions_string.split("")
      move_commands.each do |dir|

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
    if dir =='l'
      case @heading
      when 'N'
        @heading= 'W'
      when 'E'
        @heading= 'N'
      when 'S'
        @heading= 'E'
      when 'W'
        @heading = 'S'
      end
    elsif dir == 'r'
      case @heading
      when 'N'
        @heading='E'
      when 'E'
        @heading='S'
      when 'S'
        @heading= 'W'
      when 'W'
        @heading= 'N'
        end
    end
  end
end

# class MissionControl
#
# def initialize
#
# end
#
#   # puts "Define the area of your plateau:"
#   # plateau=gets.chomp
#
#   puts "Enter your x,y and heading for Rover 1:"
#   $rover1_position=gets.chomp.upcase
#
#   puts "Enter your instructions for Rover 1 (L/R/M-Left/Right/Move):"
#   $rover1_instructions=gets.chomp.downcase
#
#   @data = $rover1_position.split(" ")
#
#   $rover_instructions = $rover1_instructions.split(" ")
#
#     rover1=Rover.new(@data[0],@data[1],@data[2])
#
#   return rover1.read_instruction(rover_instructions)
# end
