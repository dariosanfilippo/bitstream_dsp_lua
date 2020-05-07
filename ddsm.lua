--[[
--
--First-order digital delta-sigma modulator.
--
--Copyright (c) 2019-2020, Dario Sanfilippo <sanfilippo.dario at gmail dot com>
--
--All rights reserved.
--
--]]

local ddsm = {}
ddsm.__index = ddsm

function ddsm:new()
    local self = setmetatable({}, ddsm)
    self.int = 0
    self.onebit = 1
    return self
end

function ddsm:uni(input)
    uni = (self:run(input) + 1) / 2
    return uni
end

function ddsm:run(input)
    self.delta = input - self.onebit
    self.int = self.int + self.delta
    if self.int >= 0 then
        self.onebit = 1
    else
        self.onebit = -1
    end
    return self.onebit
end

return ddsm

