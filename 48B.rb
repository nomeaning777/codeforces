def solve(a,b)
	ans=999999999
	$w.times{|x|
		$h.times{|y|
			if x+a-1<$w && y+b-1<$h then
				tans=0
				a.times{|i|
					b.times{|j|
						if $map[y+j][x+i]==1 then
							tans+=1
						end	
					}
				}	
				ans=[ans,tans].min
			end
		}	
	}
	return ans
end
$h,$w=gets.split.map(&:to_i)
$map=[]
$h.times{ $map.push(gets.split.map(&:to_i)) }
a,b=gets.split.map(&:to_i)
puts [solve(a,b),solve(b,a)].min
