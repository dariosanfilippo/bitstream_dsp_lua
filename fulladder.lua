local fulladder = {}
fulladder.__index = fulladder

function fulladder:new()
    local self = setmetatable({}, fulladder)
    self.sum = 0
    self.cout = 0
    return self
end

function fulladder:run(a, b, cin)
    self.sum = (a ~ b) ~ cin
    self.cout = (a & b) | ((a ~ b) & cin)
    return self.sum, self.cout
end

return fulladder
