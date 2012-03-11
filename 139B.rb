n=gets.split[0].to_i
room=Array.new()
n.times{ room.push(gets.split.map(&:to_i)) }
m=gets.split[0].to_i
paper=Array.new()
m.times{ paper.push(gets.split.map(&:to_i)) }

ans=0
room.each{|a|
	room_ans=[]
	paper.each{|p|
		t=2*(a[0]+a[1])
		next if p[0]<a[2]
		one=p[0]/a[2]
		count=(t+p[1]-1)/p[1]
		room_ans.push(((count+one-1)/one)*p[2])
	}
	ans+=room_ans.min
}
p ans
