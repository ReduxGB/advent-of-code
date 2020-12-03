local numbers = require(script.Parent.Numbers)
local found = false
local number1
local number2

local counter = 0

while counter < #numbers-1 and found == false do
	counter = counter + 1
	number1 = numbers[counter]
	for i,z in pairs(numbers) do
		if number1+z == 2020 then
			found = true
			number2 = z
			break
		end
	end
end

print("Part 1 // Number 1: "..number1..". Number 2: "..number2 .. " // Multiplied: "..number1*number2)