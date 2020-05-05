local bitouni = {}
bitouni.__index = bitouni

function bitouni:new()
    local self = setmetatable({}, bitouni)
    return self
end

function bitouni:run(input)
    return (input + 1) / 2
end

return bitouni
