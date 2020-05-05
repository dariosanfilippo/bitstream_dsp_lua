sr = 48000 * 2048 -- 98304000

local ph = require("ph")
local ph1 = ph:new(0)
local ph2 = ph:new(0)
local file = assert(io.open("mbitstream", "w"))

for i = 0, sr, 1
do 
    file:write(math.sin(ph1:run(5000)) * math.sin(ph2:run(10000)))
end

file:close()
