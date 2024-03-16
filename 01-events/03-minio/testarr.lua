local Json = require("json")

local function read_file(path)

	local f = io.open(path, "rb")
	local jstr = f:read "*a"
	f:close()
	return Json.decode(jstr)
end

local event = read_file("./folder.json")
local img = event["notification"][1]["s3"]["object"]["key"]

local to_upload = {}

for i, v in ipairs(event["notification"]) do
	local j = v["s3"]["object"]["key"]
	local terms = {}
	for w in string.gmatch(j, "([^/]+)") do
		table.insert(terms, w)
	end
	local img = {}
	if #terms > 1 then
		img["directory"] = terms[1]
		img["imageName"] = terms[2]
	else
		img["directory"] = string.sub(terms[1], 1, string.find(terms[1], ".", 1, true) - 1)
		img["imageName"] = terms[1]
	end
	img["dimension"] = "128x128 256x256 512x152 1024x1024"

	table.insert(to_upload, img)
end

for _, v in ipairs(to_upload) do
	for k, val in pairs(v) do
		print(k, val)
	end
end

