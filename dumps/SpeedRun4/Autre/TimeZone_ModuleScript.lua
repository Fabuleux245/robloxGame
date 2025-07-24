-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:44:37
-- Luau version 6, Types version 3
-- Time taken: 0.000508 seconds

local setmetatable_result1 = setmetatable({}, {
	__index = function(arg1, arg2) -- Line 2, Named "__index"
		error("Invalid TimeZone \"%s\"":format(tostring(arg2)), 2)
	end;
})
setmetatable_result1.UTC = -2
setmetatable_result1.Current = -1
return setmetatable_result1