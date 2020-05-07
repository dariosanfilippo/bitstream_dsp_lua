--[[
--
--Binary multiplier module.
--
--Copyright (c) 2019-2020, Dario Sanfilippo <sanfilippo.dario at gmail dot com>
--
--All rights reserved.
--
--]]

local bmmodule = {}
bmmodule.__index = bmmodule

local ba = require("binaryadder")
local ba1 = ba:new()
local ba2 = ba:new()
local ba3 = ba:new()

function bmmodule:new()
    local self = setmetatable({}, bmmodule)
    return self
end

function bmmodule:run(x1, x2, x3, x4, x5, x6, x7, x8)
    return ba3:run(ba1:run((x1 ~ x2), (x3 ~ x4)), ba2:run((x5 ~ x6), (x7 ~ x8)))
end

return bmmodule
