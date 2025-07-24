-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:44:37
-- Luau version 6, Types version 3
-- Time taken: 0.000622 seconds

local setmetatable_result1 = setmetatable({}, {
	__index = function(arg1, arg2) -- Line 2, Named "__index"
		error("Invalid TimeUnit \"%s\"":format(tostring(arg2)), 2)
	end;
})
setmetatable_result1.Seconds = "Seconds"
setmetatable_result1.Minutes = "Minutes"
setmetatable_result1.Hours = "Hours"
setmetatable_result1.Days = "Days"
setmetatable_result1.Months = "Months"
setmetatable_result1.Years = "Years"
setmetatable_result1.Weeks = "Weeks"
return setmetatable_result1