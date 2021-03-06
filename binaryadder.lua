--[[
--
--Binary adder.
--
--Copyright (c) 2019-2020, Dario Sanfilippo <sanfilippo.dario at gmail dot com>
--
--All rights reserved.
--
--]]

local binaryadder = {}
binaryadder.__index = binaryadder

function binaryadder:new()
    local self = setmetatable({}, binaryadder)
    self.state = 0
    self.sum = 0
    return self
end

local fulladder = require("fulladder")
local fa = fulladder:new()

function binaryadder:run(a, b)
    self.state, self.sum = fa:run(a, b, self.state)
    return self.sum
end

return binaryadder

