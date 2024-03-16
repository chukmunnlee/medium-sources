local Json = require("json")

local function read_file(path)
	local f = io.open(path, "rb")
	local jstr = f:read "*a"
	f:close()
	return Json.decode(jstr)
end

local event = read_file("./folder.json")

for i, v in ipairs(event["notification"]) do
	local content_type = v["s3"]["object"]["contentType"]
	if content_type:find("^image/") ~= nil then
		return true
	end
end

return false
