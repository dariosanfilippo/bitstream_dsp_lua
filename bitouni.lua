--[[
--
--Bipolar to unipolar conversion.
--
--Copyright (c) 2019-2020, Dario Sanfilippo <sanfilippo.dario at gmail dot com>
--
--All rights reserved.
--
--]]

local bitouni = {}
bitouni.__index = bitouni

function bitouni:new()
    local self = setmetatable({}, bitouni)
    return self
end

function bitouni:run(input)
    return (input + 1) / 2
end

return bitouni
