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

$max_x=5
$max_y=5

class Rover
attr_reader :x, :y, :direction

def initialize(x_position, y_position, direction)
  @x_position = x_position
  @y_position = y_position
  @direction = direction
end


  def read_instruction(rover_instructions)
      rover_instructions.each do

        if 'l' || 'r'
          turn
        end

        if 'm'
          move
        end

      end
        return "Position is #{@x_position}, #{@y_position}, #{@direction}"
  end



  def move

    when 'N'
      @y_position+=1
    end

      when 'E'
        @x_position+=1
      end

        when 'S'
          @y_position-=1
        end

          when 'W'
            @x_position-=1
          end
  end

  def turn

    when 'N'
      if 'l'
         @direction= 'W'
        else
         @direction= 'E'
      end
    end

    when 'E'
      if l
         @direction= 'N'
        else
         @direction= 'S'
      end
    end

    when 'S'
      if 'l'
         @direction= 'E'
       else
         @direction= 'W'
      end
    end

      when 'W'
        if 'l'
           @direction = 'S'
         else
           @direction= 'W'
        end
      end
  end

  puts "Define the area of your plateau:"
  plateau=gets.chomp

  puts "Enter your x,y and heading for Rover 1:"
  rover1_position=gets.chomp

  puts "Enter your instructions for Rover 1 (L/R/M-Left/Right/Move):"
  rover1_instructions=gets.chomp

  # puts "Enter your x,y and heading for Rover 2:"
  # rover2_position=gets.chomp
  #
  # puts "Enter your instructions for Rover 2 (L/R/M-Left/Right/Move):"
  # rover2_instructions=gets.chomp

  data_position = rover1_position.split(" ")

  data_instructions= rover1_instructions.split(" ")

  rover_instructions = data_instructions.downcase

  rover1=Rover.new(data[0],data[1],data[2])

  rover1.read_instruction(rover_instructions)
