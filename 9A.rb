a=[7-gets.split.map(&:to_i).max,6]
g=a[0].gcd(a[1])
printf "%d/%d\n",a[0]/g,a[1]/g

