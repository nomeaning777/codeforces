t1,t2,x1,x2,t0=gets.split.map(&:to_i)
res,ry1,ry2,y2,now=t2,0,x2,0,t1.to_f
if t1==t2 then
	p x1,x2
	exit
end
for y1 in 1..x1
	begin
		now=(t1*y1+t2*y2).to_f/(y1+y2).to_f  
	end while now<t0 && y2<x2 && y2+=1
	
	if now>=t0 && now<=res then
		ry1,ry2,res=y1,y2,now
	end
end
p ry1,ry2
