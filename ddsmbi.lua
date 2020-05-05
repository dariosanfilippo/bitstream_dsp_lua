local ddsmbi = {}
ddsmbi.__index = ddsmbi

function ddsmbi:new()
    local self = setmetatable({}, ddsmbi)
    self.int = 0
    self.onebit = 1
    return self
end

function ddsmbi:run(input)
    self.delta = input - self.onebit
    self.int = self.int + self.delta
    if self.int >= 0 then
        self.onebit = 1
    else
        self.onebit = -1
    end
    return self.onebit
end

return ddsmbi

