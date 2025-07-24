-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:46:29
-- Luau version 6, Types version 3
-- Time taken: 0.000771 seconds

local collect_upvr = require(script.Parent.collect)
return function(arg1, arg2) -- Line 14, Named "keyBy"
	--[[ Upvalues[1]:
		[1]: collect_upvr (readonly)
	]]
	return collect_upvr(arg1, function(arg1_2, arg2_2) -- Line 15
		--[[ Upvalues[1]:
			[1]: arg2 (readonly)
		]]
		local var3
		if typeof(arg2) == "function" then
			var3 = arg2(arg2_2, arg1_2)
		else
			var3 = arg2_2[arg2]
		end
		return var3, arg2_2
	end)
end