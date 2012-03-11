def is_lucky(s)
	while s>0
		return false if s%10!=7 && s%10!=4
		s/=10
	end
	return true
end
def fact(k)
	return 1 if k<=0
	return fact(k-1)*k
end
def lucky(now)
	res=[]
	return [] if now>1000000000
	return [now]+lucky(now*10+4)+lucky(now*10+7)
end
n,k=gets.split.map(&:to_i)
k-=1
remain=[]

def solve(n,remain,k)
	return [] if n==0
	n.times{|i|
		if k<fact(n-1)*(i+1) then
			ans=[remain[i]]
			remain.delete_at(i)
			ans+=solve(n-1,remain,k-fact(n-1)*i)
			return ans
		end
	}
end
if n<=30 then
	n.times{|i|
		remain.push(i+1)
	}
	if fact(n)<=k then
		puts -1
		exit
	end
	res=solve(n,remain,k)
	ans=0
	n.times{|i|
		ans+=1 if is_lucky(i+1) && is_lucky(res[i])
	}
	p ans
else
	(n-29).upto(n){|i|
		remain.push(i)
	}
	res=solve(30,remain,k)
	ans=0
	(n-29).upto(n){|i|
		ans+=1 if is_lucky(res[i-n+29]) && is_lucky(i)
	}
	lucky_number=lucky(0)
	lucky_number.shift
	lucky_number.each{|i|
		ans+=1 if i<n-29 
	}
	p ans
end
