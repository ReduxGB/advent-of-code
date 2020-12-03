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

local multiplied

print("Answer 1: "..check(1,1))
multiplied = check(1,1)

print("Answer 2: "..check(3,1))
multiplied = multiplied * check(3,1)

print("Answer 3: "..check(5,1))
multiplied = multiplied * check(5,1)

print("Answer 4: "..check(7,1))
multiplied = multiplied * check(7,1)

print("Answer 5: "..check(1,2))
multiplied = multiplied * check(1,2)

print("Multiplied: "..multiplied)