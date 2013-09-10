class DieType
	def initialize(sides)
		@sides = sides
	end

	def roll_die
		roll = Random.rand(@sides)+1
		puts "#{roll}"
	end

end

d_twelve=DieType.new(12)
d_ten=DieType.new(10)
d_twelve.roll_die
d_ten.roll_die