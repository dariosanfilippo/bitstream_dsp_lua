--[[
--
--Unipolar first-order digital delta-sigma converter.
--
--Copyright (c) 2019-2020, Dario Sanfilippo <sanfilippo.dario at gmail dot com>
--
--All rights reserved.
--
--]]

local ddsmuni = {}
ddsmuni.__index = ddsmuni

function ddsmuni:new()
    local self = setmetatable({}, ddsmuni)
    self.int = 0
    self.onebit = 1
    return self
end

function ddsmuni:run(input)
    local bi = input * 2 - 1
    self.delta = bi - self.onebit
    self.int = self.int + self.delta
    if self.int >= 0 then
        self.onebit = 1
    else
        self.onebit = -1
    end
    return (self.onebit + 1) / 2
end

return ddsmuni

