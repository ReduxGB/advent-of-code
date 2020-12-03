local input = require(script.Parent.input)

local splitinput = (input):split(" ")
local minmax = {}
local unsplitcharacter = {}
local password = {}

local counter = 1
local arraycounter = 1

while counter <= #splitinput-1 do
	minmax[arraycounter] = splitinput[counter]
	unsplitcharacter[arraycounter] = splitinput[counter+1]
	password[arraycounter] = splitinput[counter+2]
	counter = counter + 3
	arraycounter = arraycounter + 1
end

local min = {}
local max = {}

for i,z in pairs(minmax) do
	local temp = z:split("-")
	min[i] = tonumber(temp[1])
	max[i] = tonumber(temp[2])
end

local character = {}

for i,z in pairs(unsplitcharacter) do
	character[i] = z:split(":")[1]
end

local count = 0

for i,z in pairs(password) do
	local correct = 0
	if string.sub(z,min[i],min[i]) == character[i] then
		correct = correct + 1
	end
	if string.sub(z,max[i],max[i]) == character[i] then
		correct = correct + 1
	end
	if correct == 1 then
		count = count + 1
	end
end

print("Number of correct passwords: "..count)