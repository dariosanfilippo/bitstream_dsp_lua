-- ddsm-ed sine wave generator (bipolar)

local samplerate = 48000 * 2^8
local initph = 0

local onebitsine = {}
onebitsine.__index = onebitsine

local ph = require("ph")
local ddsmbi = require("ddsmbi")

local ph1 = ph:new(initph, samplerate)
local ddsmbi1 = ddsmbi:new()

function onebitsine:new()
    local self = setmetatable({}, onebitsine)
    return self
end

function onebitsine:run(freq)
    return ddsmbi1:run(math.sin(ph1:run(freq)))
end

return onebitsine
    
