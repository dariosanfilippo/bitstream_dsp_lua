local unitobi = {}
unitobi.__index = unitobi

function unitobi:new()
    local self = setmetatable({}, unitobi)
    return self
end

function unitobi:run(input)
    return input * 2 - 1
end

return unitobi
