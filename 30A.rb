input=gets.split.map(&:to_i)
a=input[0]
b=input[1]
n=input[2]
-1000.upto(1000){|ans|
	if a*(ans**n)==b then
		puts ans
		exit
	end	
}
puts "No solution"
