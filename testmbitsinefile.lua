sr = 384000

local ph = require("ph")
local ph1 = ph:new(0)
local file = assert(io.open("mbitsine", "w"))

for i = 0, sr, 1
do 
    file:write(math.sin(ph1:run(10000)))
    file:write(" ")
end

file:close()
