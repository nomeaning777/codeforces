hash={"+"=>"1010",">"=>"1000","<"=>"1001","-"=>"1011","."=>"1100",","=>"1101","["=>"1110","]"=>"1111"}
program=gets.split[0]
ans=""
0.upto(program.length-1){|i|
	ans+=hash[program[i]]
}
p ans.to_i(2)%1000003

