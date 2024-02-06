local json = require "json"
local inspect = require("inspect")
local file = io.open("example.json", "r")

local fileContent = file and file:read("a")
local fileDecoded = fileContent and json.decode(fileContent) or {}

os.execute("chcp 65001 > NUL")

print(fileDecoded)
print(inspect(fileDecoded))
