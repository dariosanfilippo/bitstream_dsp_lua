local ddsm2bi = {}
ddsm2bi.__index = ddsm2bi

function ddsm2bi:new()
    local self = setmetatable({}, ddsm2bi)
    self.int1 = 0
    self.int2 = 0
    self.onebit = 1
    return self
end

function ddsm2bi:run(input)
    self.delta1 = input - self.onebit
    self.int1 = self.int1 + self.delta1
    self.delta2 = self.int1 - self.onebit
    self.int2 = self.int2 + self.delta2
    if self.int2 >= 0 then
        self.onebit = 1
    else
        self.onebit = -1
    end
    return self.onebit
end

return ddsm2bi

