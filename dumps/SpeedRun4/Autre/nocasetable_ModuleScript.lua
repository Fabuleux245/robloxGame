-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:01:32
-- Luau version 6, Types version 3
-- Time taken: 0.000658 seconds

return function(arg1) -- Line 4
	local setmetatable_result1 = setmetatable({}, {
		__index = function(arg1_2, arg2) -- Line 6, Named "__index"
			return rawget(arg1_2, arg2:lower())
		end;
		__newindex = function(arg1_3, arg2, arg3) -- Line 9, Named "__newindex"
			rawset(arg1_3, arg2:lower(), arg3)
		end;
	})
	for i, v in pairs(arg1) do
		setmetatable_result1[i] = v
	end
	return setmetatable_result1
end