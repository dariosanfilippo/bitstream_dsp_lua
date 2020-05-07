--[[
--
--Phasor.
--
--Copyright (c) 2019-2020, Dario Sanfilippo <sanfilippo.dario at gmail dot com>
--
--All rights reserved.
--
--]]

local phasor = {}
phasor.__index = phasor

function phasor:new(samplerate)
    local self = setmetatable({}, phasor)
    self.ph = 0
    self.samplerate = samplerate
    return self
end

function phasor:run(freq)
    self.ph = self.ph + freq / self.samplerate
    if self.ph >= 1 then
        self.ph = self.ph - 1
    elseif self.ph < 0 then
        self.ph = self.ph + 1
    end
    return self.ph * 2 * math.pi
end

return phasor
