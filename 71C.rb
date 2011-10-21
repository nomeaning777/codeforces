n=gets.to_i
a=gets.split.map(&:to_i)
3.upto(n){|i|
	if n%i==0 then
		k=n/i
		k.times{|j|
			ok=1
			now=j
			i.times{
				if a[now]==0 then
					ok=0
					break
				end	
				now+=k
			}
			if ok==1 then	
				puts "YES"
				exit
			end	
		}
	end
}
puts "NO"
