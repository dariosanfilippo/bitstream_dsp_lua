--[[
--
--Unipolar to bipolar conversion.
--
--Copyright (c) 2019-2020, Dario Sanfilippo <sanfilippo.dario at gmail dot com>
--
--All rights reserved.
--
--]]

local unitobi = {}
unitobi.__index = unitobi

function unitobi:new()
    local self = setmetatable({}, unitobi)
    return self
end

function unitobi:run(input)
    return input * 2 - 1
end

return unitobi
