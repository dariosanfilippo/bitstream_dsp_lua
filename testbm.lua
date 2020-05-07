--[[
--
--Binary multiplier test.
--
--decent noises-shaping at 48000*1024 or 48000*2048; same behaviour in
--simulation and hardware testing.
--
--Copyright (c) 2019-2020, Dario Sanfilippo <sanfilippo.dario at gmail dot com>
--
--All rights reserved.
--
--]]

sr = 48000 * 2048

dofile("wav.lua")


local onebitsine = require("onebitsine")
local ddsm = require("ddsm")
local ph = require("ph")
local bm = require("binarymultiplier")
local ba = require("binaryadder")
local onebitsine1 = onebitsine:new()
local onebitsine2 = onebitsine:new()
local ddsm1 = ddsm:new()
local ddsm2 = ddsm:new()
local ph1 = ph:new(0)
local ph2 = ph:new(0)
local bm1 = bm:new()
local ba1 = ba:new()
-- local file = assert(io.open("bitstream", "wb"))

local samples = {}

for i = 0, sr / 100, 1
do

--    samples[i] = math.sin(ph1:run(20000)) * ((2^31)/2-1)
--    samples[i] = (ba1:run( (onebitsine1:run(20000) + 1) / 2 , (onebitsine2:run(10000) + 1) / 2  ) * 2 - 1) * (2^31/2-1)
--    samples[i] = onebitsine2:run(10000) * 32767
--    samples[i] = math.sin(ph1:run(10000)) * math.sin(ph2:run(20000)) * (2^31/2-1)
--    samples[i] = (ba1:run(ddsm1:uni(-.5), ddsm2:uni(math.sin(ph1:run(10000)))) * 2 - 1) * (2^31-1)
    samples[i] = (ba1:run(ddsm1:uni(math.sin((ph2:run(20000)))), ddsm2:uni(math.sin(ph1:run(10000)))) * 2 - 1) * (2^31-1)
--    samples[i] = (ba1:run(ddsm1:uni(-.2), ddsm2:uni(.2)) * 2 - 1) * (2^31-1)

end



local writer = wav.create_context("out.wav", "w")
writer.init(1, sr, 32)
writer.write_samples_interlaced(samples)
writer.finish()
