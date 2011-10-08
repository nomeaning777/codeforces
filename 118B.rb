n=gets.to_i
k=1
q=n
for i in 0..n
	(q).times{
		print "  "
	}
	for j in 0..(k/2)
		if j>0 then 
			print " "
		end	
		print j
	end
	(k/2-1).downto(0){|j|
		print " "+j.to_s
	}
	puts
	k+=2
	q-=1
end
q+=2
k-=4
n.downto(1){|i|
	(q).times{
		print "  "
	}
	for j in 0..(k/2)
		if j>0 then 
			print " "
		end	
		print j
	end
	(k/2-1).downto(0){|j|
		print " "+j.to_s
	}
	puts
	k-=2
	q+=1
}	
	
