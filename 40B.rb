size=gets.split.map(&:to_i)
d=gets.to_i
ans=0
w=size[0]
h=size[1]
dx=[0,1,0,-1]
ac={}
x=d-1
y=d-1
loop do

	#条件を満たすかどうか
	if [x+1,y+1,w-x,h-y].min!=d then
		break
	end
	ac.store(x+y*w,1)
	if (x+y)%2==0 then
		ans+=1
	end
	ok=0
	for k in 0..3
		nx=x+dx[k]
		ny=y+dx[k^1]
		if [nx+1,ny+1,w-nx,h-ny].min==d && ac.has_key?(w*ny+nx)==false then
			x=nx
			y=ny
			ok=1
			break
		end	
	end
	if ok==0 then
		break
	end	
end
puts ans

