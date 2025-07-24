-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:57:40
-- Luau version 6, Types version 3
-- Time taken: 0.000939 seconds

return function(arg1, arg2) -- Line 17
	local var2 = arg1
	if typeof(arg1) == "string" then
		var2 = tonumber(arg1) or tonumber("nan")
	end
	if typeof(var2) ~= "number" then
		return "nan"
	end
	if arg2 ~= nil then
		if typeof(arg2) ~= "number" then
			error("TypeError: fractionDigits must be a number between 0 and 100")
		end
		if arg2 < 0 or 100 < arg2 then
			error("RangeError: fractionDigits must be between 0 and 100")
		end
	end
	local var3
	if arg2 == nil then
		var3 = "%e"
	else
		var3 = "%."..tostring(arg2)..'e'
	end
	return string.format(var3, var2):gsub("%+0", '+'):gsub("%-0", '-'):gsub("0*e", 'e')
end