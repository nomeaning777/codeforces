input=gets
while true
	back=input.length
	input.gsub!("  "," ");
	break if back==input.length
end
input.gsub!(" !","!");
input.gsub!(" ?","?");
input.gsub!(" .",".");
input.gsub!(" ,",",");

for i in 0..25
	t="abcdefghijklmnopqrstuvwxyz"[i]
	input.gsub!("!"+t,"! "+t);
	input.gsub!("?"+t,"? "+t);
	input.gsub!("."+t,". "+t);
	input.gsub!(","+t,", "+t);
end
print input
	
