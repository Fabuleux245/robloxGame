-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:55:30
-- Luau version 6, Types version 3
-- Time taken: 0.000502 seconds

local symbols_upvr = require(script.Parent.symbols)
return function(arg1) -- Line 3
	--[[ Upvalues[1]:
		[1]: symbols_upvr (readonly)
	]]
	local var3 = arg1
	local getmetatable_result1 = getmetatable(var3)
	if getmetatable_result1 then
		if getmetatable_result1[symbols_upvr.isMagicMock] == nil then
			var3 = false
		else
			var3 = true
		end
		return var3
	end
	return false
end