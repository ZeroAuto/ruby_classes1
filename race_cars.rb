class RaceCar
	def initialize
		@distance = 0
		@mph = Random.rand(60...80)
	end

	def to_s
		"#{@distance} #{@mph}"
	end

end

# class RaceTrack
# 	def initialize
# end

car_a=RaceCar.new
car_b=RaceCar.new
# track_a.RaceTrack.new
puts car_a
puts car_b
