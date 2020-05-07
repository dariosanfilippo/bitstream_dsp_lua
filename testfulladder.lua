--[[
--
--Full adder test.
--
--Copyright (c) 2019-2020, Dario Sanfilippo <sanfilippo.dario at gmail dot com>
--
--All rights reserved.
--
--]]

local fa = require("fulladder")

local fa1 = fa:new()
local fa2 = fa:new()

while true do
    print(fa1:run(0, 0, 0))
    print("//////////")
    print(fa2:run(1, 1, 1))
    io.read()
end

