time=gets.split(":").map(&:to_i)

h=((time[0]*60+time[1])%720)*360/720.0
m=(time[1]*360/60)
puts h.to_s+" "+m.to_s
#printf "%.10f %.10f\n",h,m

