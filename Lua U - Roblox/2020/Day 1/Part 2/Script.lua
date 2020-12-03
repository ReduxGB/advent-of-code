local numbers = require(script.Parent.Numbers)
local found = false
local number1
local number2
local number3

local counter = 0
local counter2 = 0

while counter < #numbers-1 and found == false do
	counter = counter + 1
	counter2 = 0
	number1 = numbers[counter]
	while found == false and counter2 <= #numbers-1 do
		counter2 = counter2 + 1
		number2 = numbers[counter2]
		for i,z in pairs(numbers) do
			if number1+number2+z == 2020 then
				found = true
				number3 = z
				break
			end
		end
	end
end

print("Part 2 // Number 1: "..number1..". Number 2: "..number2..". Number 3: "..number3 .. " // Multiplied: "..number1*number2*number3)