m=gets.to_i
k=Array.new(5){Array.new(5,0)}
m.times{
	input=gets.split.map(&:to_i)
	k[input[0]-1][input[1]-1]=1
	k[input[1]-1][input[0]-1]=1
}
5.times{|i|
	5.times{|j|
		5.times{|x|
			if i==j || j==x || x==i then
				next
			end
			if k[i][j]==1 && k[j][x]==1 && k[x][i]==1 then
				puts "WIN"
				exit
			end
			if k[i][j]==0 && k[j][x]==0 && k[x][i]==0 then
				puts "WIN"
				exit
			end
		}
	}
}
puts "FAIL"
