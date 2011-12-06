str=gets.split[0]
if str.upcase==str then
	puts str.downcase
elsif str[0].downcase+str[1..str.length-1].upcase==str then
	puts str[0].upcase+str[1..str.length-1].downcase
else 
	puts str
end
