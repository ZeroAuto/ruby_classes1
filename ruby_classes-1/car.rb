class Car
  
  def initialize
    @distance = 60
    @fuel = 10
    puts "the initialize method is running automatically"
  end

  def drive(my_distance)
    gallons_used = my_distance / 35.0
    remaining_fuel = @fuel - gallons_used
    if remaining_fuel >= 0
      puts "I have driven #{my_distance} which has drained #{gallons_used} gallons and I have #{remaining_fuel} gallons left."
    else
      puts "You have driven too far"
    end
  end

  def fuel_up(gallons_used)
    fuel_up_cost = gallons_used * 3.5
    puts "It will cost #{fuel_up_cost} to refill your tank"
  end

  def get_info
    return "I am a car. I've driven #{@distance} miles and I have #{@fuel} gallons of fuel left."
  end
end



