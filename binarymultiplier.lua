local bm = {}
bm.__index = bm

local bmmodule = require("bmmodule")
local ba = require("binaryadder")

local bmmodule1 = bmmodule:new()
local bmmodule2 = bmmodule:new()
local bmmodule3 = bmmodule:new()
local bmmodule4 = bmmodule:new()

local ba1 = ba:new()
local ba2 = ba:new()
local ba3 = ba:new()

function bm:new()
    local self = setmetatable({}, bm)
    self.x1 = 0
    self.x2 = 0
    self.x3 = 0
    self.y1 = 0
    self.y2 = 0
    self.y3 = 0
    return self
end

function bm:run(x, y)
    self.bmout1 = bmmodule1:run(x, self.y1, x, y, self.x1, y, self.x1, self.y1)
    self.bmout2 = bmmodule2:run(self.x2, self.y1, self.x2, y, self.x3, y, self.x3, self.y1)
    self.bmout3 = bmmodule3:run(x, self.y3, x, self.y2, self.x1, self.y2, self.x1, self.y3)
    self.bmout4 = bmmodule4:run(self.x2, self.y3, self.x2, self.y2, self.x3, self.y2, self.x3, self.y3)
    self.x3 = self.x2
    self.x2 = self.x1
    self.x1 = x
    self.y3 = self.y2
    self.y2 = self.y1
    self.y1 = y
    return ba3:run(ba1:run(self.bmout1, self.bmout2), ba2:run(self.bmout3, self.bmout4))
end

return bm
