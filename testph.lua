sr = 192000
local ph = require("ph")
ph1 = ph:new(0)
ph2 = ph:new(0)
while true do
    print(ph1:run(1000), ph2:run(-1000))
    io.read()
end
