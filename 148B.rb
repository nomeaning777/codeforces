vp,vd,t,f,c=gets.to_i,gets.to_i,gets.to_i,gets.to_i,gets.to_i
if vp>=vd then
	puts 0
	exit
end
time=Rational(t,1)
for ans in 0..100000
	#t*vp+time*vp=(vd-vp)*t
	#t*(vp-vd)=-vp*time
	tmp=Rational(-vp*time,vp-vd)
	#p [tmp,vp,vd]
	if tmp+time>=Rational(c,vp) then
		puts ans
		exit
	end
	time+=tmp*2+f
end
