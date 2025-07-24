-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:54:17
-- Luau version 6, Types version 3
-- Time taken: 0.001227 seconds

local Number_upvr = require(script.Parent.Parent.Number)
return function(arg1) -- Line 6
	--[[ Upvalues[1]:
		[1]: Number_upvr (readonly)
	]]
	local var5 = not not arg1
	if var5 then
		var5 = false
		if arg1 ~= 0 then
			var5 = false
			if arg1 ~= "" then
				var5 = not Number_upvr.isNaN(arg1)
			end
		end
	end
	return var5
end