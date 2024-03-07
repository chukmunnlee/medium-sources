local Json = require("json")

local function read_file(path)
	local f = io.open(path, "rb")
	local jstr = f:read "*a"
	f:close()
	return Json.decode(jstr)
end

local event = read_file("./folder.json")

--

local to_thumbnail = {}

for i, v in ipairs(event["notification"]) do

	local j = v["s3"]["object"]["key"]
	local content_type = v["s3"]["object"]["contentType"]

	if content_type:find("^image/") ~= nil then

		local img = {}
		local dir = string.match(j, "/[^/]*$")

		if dir then
			img["directory"] = string.sub(j, 1, #j - #dir)
			img["imageName"] = string.sub(j, #j - #dir + 2, #j)
		else
			img["directory"] = string.sub(j, 1, string.find(j, ".", 1, true) - 1)
			img["imageName"] = j
		end

		img["dimension"] = "128x128 256x256 512x152 1024x1024"

		table.insert(to_thumbnail, img)
	end
end

event["images"] = to_thumbnail
--
--

for _, v in ipairs(to_thumbnail) do
	print("---------------")
	for k, val in pairs(v) do
		print(k, val)
	end
end

