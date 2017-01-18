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

max_x=0
max_y=0

class Rover
attr_reader :x, :y, :direction

def initialize(x_position, y_position, direction)
  @x_position = x_position
  @y_position = y_position
  @direction = direction
end

# puts "Define the area of your plateau:"
# @plateau=gets.chomp
#
# puts "Enter your x,y and heading for Rover 1:"
# @rover1_position=gets.chomp
#
# puts "Enter your instructions for Rover 1 (L/R/M-Left/Right/Move):"
# @rover1_instructions=gets.chomp
#
# puts "Enter your x,y and heading for Rover 2:"
# @rover2_position=gets.chomp
#
# puts "Enter your instructions for Rover 2 (L/R/M-Left/Right/Move):"
# @rover2_instructions=gets.chomp


  def read_instruction(rover_instructions)

    if l || r
      turn
    end

    if m
      move
    end

  end



  def move

    when North
      @y_position+=1
    end

    when East
      @x_position+=1
    end

    when South
      @y_position-=1
    end

    when West
      @x_position-=1
    end

  end

def turn
  if left
    @heading
  end
end
