local lp = {}
lp.__index = lp

function lp:new()
    local self = setmetatable({}, lp)
    self.state = 0
    self.out = 0
    return self
end

function lp:run(input, cf)
    local coeff = math.exp(-2 * math.pi * (cf / sr))
    local norm = 1 - coeff
    self.state = self.out
    self.out = input * norm + self.state * coeff
    return self.out
end

return lp
