local event = { 
	body = { 
		message= { 
			id= "abc123", 
			name= "fred", 
			email= "fred@gmail.com" 
		} 
	} 
}

local form = ''

for k, v in pairs(event.body.message) do
	form = form .. '&' .. k .. '=' .. v
end

event.body.form = string.sub(form, 2, #form)

for k, v in pairs(event.body) do
	print(k, v)
end
