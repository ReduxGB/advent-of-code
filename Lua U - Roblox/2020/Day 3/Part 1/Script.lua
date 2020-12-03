local input = require(script.Parent.Input)

local array = {}

array = input:split("\n")

function check(right,down)
	local trees = 0
	local positionx = 1
	local positiony = 1
	while array[positiony] ~= nil do
		positionx = positionx + right
		if positionx > #array[positiony] then
			positionx = positionx - #array[positiony]
		end
		positiony = positiony + down
		if array[positiony] ~= nil then
			if string.sub(array[positiony],positionx,positionx) == "#" then
				trees = trees + 1
			end
		end
	end
	return trees
end

print("Answer: "..check(1,1))