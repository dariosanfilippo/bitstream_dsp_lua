local ba = require("binaryadder")

local ba1 = ba:new()
local ba2 = ba:new()

while true do
    -- here we're adding 0 to .25 (DSM-ed)
    print("ba1: ", ba1:run(0, 0)) 
    print("ba1: ", ba1:run(0, 1)) 
    print("ba1: ", ba1:run(0, 0)) 
    print("ba1: ", ba1:run(0, 0))
    print("ba1: ", ba1:run(0, 0)) 
    print("ba1: ", ba1:run(0, 1)) 
    print("ba1: ", ba1:run(0, 0)) 
    print("ba1: ", ba1:run(0, 0))
    print("---------")
    -- here we're adding 1 to .25 (DSM-ed)
    print("ba2: ", ba2:run(1, 0))
    print("ba2: ", ba2:run(1, 1))
    print("ba2: ", ba2:run(1, 0))
    print("ba2: ", ba2:run(1, 0))
    print("ba2: ", ba2:run(1, 0))
    print("ba2: ", ba2:run(1, 1))
    print("ba2: ", ba2:run(1, 0))
    print("ba2: ", ba2:run(1, 0))
    io.read()
end

