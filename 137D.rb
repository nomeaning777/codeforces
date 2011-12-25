$s=gets.split[0]
$n=$s.length
$k=gets.split[0].to_i

dp=Array.new($n+1){Array.new($n+1,0)}
def solve(s,e)
	e-=1
	str=$s[s..e]
	ans=0
	0.upto(str.length-1){|i|
		if str[i]!=str[str.length-1-i] then
			ans+=1
		end
	}
	ans/2
end
def solve2(s,e)
	e-=1
	str=$s[s..e]
	ans=0
	0.upto(str.length-1){|i|
		if str[i]!=str[str.length-1-i] then
			str[i]=str[str.length-1-i]
		end
	}
	str
end


0.upto($n-1){|i|
	(i+1).upto($n){|j|
		dp[i][j]=solve(i,j)
	}
}
memo=Array.new($k+2){Array.new($n+2,9999999)}
memo[0][0]=0
back=Array.new($k+2){Array.new($n+2,9999999)}

0.upto($k){|j|
	0.upto($n-1){|i|
		(i+1).upto($n){|k|
			if memo[j+1][k]>memo[j][i]+dp[i][k] then
				memo[j+1][k]=memo[j][i]+dp[i][k]
				back[j+1][k]=i
			end
		}
	}
}
ans=999999999
for i in 1..$k
	ans=[ans,memo[i][$n]].min
end
p ans
tar=0
for i in 1..$k
	if ans==memo[i][$n] then tar=i end
end

i=tar
j=$n
res=[]
loop do
	res.push([back[i][j],j])
	j=back[i][j]

	i-=1
	if i==0 then
		break
	end
end
res.reverse!
0.upto(res.size-1){|i|
	if i>0 then print "+" end
	print solve2(res[i][0],res[i][1])
}
puts ""
