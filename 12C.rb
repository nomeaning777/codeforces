n,m=gets.split.map(&:to_i)
costs=[gets.split.map(&:to_i).sort]
costs.push(costs[0].reverse)
fruit=Hash.new
fruit.default=0
m.times{ fruit[gets.split[0]]+=1 }
ans=[0,0]
fruit.size.times{|i|
	found=false
	m.downto(1){|j|
		fruit.each{|a,b|
			if b==j then
				2.times{|k| ans[k]+=j*costs[k][i] }
				found=a
				break
			end
		}
		fruit[found]=0
		break if found!=false
	}
}
printf "%d %d\n",ans[0],ans[1]
