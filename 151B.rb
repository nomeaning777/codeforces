n=gets.to_i
shop=[]
taxi=[]
max=[0,0,0]
10.times{|k|
	taxi.push(k.to_s*6)
}
n.times{
	res=[0,0,0]
	k,name=gets.split
	k.to_i.times{
		a1,a2,a3=gets.split[0].split('-')
		t=a1+a2+a3
		if taxi.include?(t)
			res[0]+=1
		else
			v=Array.new(6){0}
			6.times{|i| v[i]=t[i].to_i }
			ok=true
			5.times{|i|
				ok=false if v[i]<=v[i+1]
			}
			if ok 
				res[1]+=1
			else
				res[2]+=1
			end
		end
	}
	3.times{|i|
		max[i]=[max[i],res[i]].max
	}
	shop.push([name,res])
}
output=["If you want to call a taxi, you should call: ", "If you want to order a pizza, you should call: ","If you want to go to a cafe with a wonderful girl, you should call: "]
3.times{|k|
	print output[k]
	start=true
	shop.each{|t|
		if (t[1][k]==max[k]) then
			print ", " unless start
			start=false
			print t[0]
		end
	}
	puts "."
}
