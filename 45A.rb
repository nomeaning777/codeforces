months=["January","February","March","April","May","June","July","August","September","October","November","December"]
n=gets.split[0]
k=gets.to_i
puts months[(months.index(n)+k)%12]
