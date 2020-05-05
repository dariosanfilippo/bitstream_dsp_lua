sr = 48000 * 256

dofile("wav.lua")

local ph = require("ph")
local ddsmbi = require("ddsmbi")
local ddsm2bi = require("ddsm2bi")

local ph1 = ph:new(0)
local ddsmbi1 = ddsmbi:new()
local ddsm2bi1 = ddsm2bi:new()

local samples = {}
local samples1 = {}

for i = 0, sr * .1, 1 do
    local sample = .95 * math.sin(ph1:run(1000))
    samples[i] = ddsm2bi1:run(sample) * (2^31 - 1)
    samples1[i] = ddsmbi1:run(sample) * (2^31 - 1)
end

local writer = wav.create_context("ddsm2.wav", "w")
writer.init(1, sr, 32)
writer.write_samples_interlaced(samples)
writer.finish()

local writer1 = wav.create_context("ddsm.wav", "w")
writer1.init(1, sr, 32)
writer1.write_samples_interlaced(samples1)
writer1.finish()
