n=gets.to_i
a=[]
n.times{
	a.push(gets.to_i)
}
ok=1
(n-1).times{|i|
	if a[i]!=a[i+1] then
		ok=0
		break
	end
}
if ok==1 then
	puts "Exemplary pages."
	exit
end
cnt={}
cnt.default=0
a.each{|i|
	cnt[i]+=1
}
if cnt.length<5 then
	n.times{|i|
		if cnt[a[i]]==1 then
			n.times{|j|
				if cnt[a[j]]==1 then
					if a[i]>a[j] then
						v=a[i]-a[j]
						v/=2
						a[i]-=v
						a[j]+=v
						ok=1
						(n-1).times{|i|
							if a[i]!=a[i+1] then	
								ok=0
								break
							end
						}
						if ok==1 then
							printf "%d ml. from cup #%d to cup #%d.\n",v,j+1,i+1
							exit
						end
						a[i]+=v
						a[j]-=v;
					end
				end
			}
		end	
	}
end
puts "Unrecoverable configuration."
