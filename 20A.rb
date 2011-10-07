path=gets.split[0]
loop do
	if path==path.gsub("//","/") then
		if path[path.length-1,1]=="/" then
			path=path[0,path.length-1]
		end
		if path=="" then
			path="/"
		end	
		puts path
		break
	end
	path=path.gsub("//","/")
end

