-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:34:14
-- Luau version 6, Types version 3
-- Time taken: 0.000591 seconds

local Cryo_upvr = require(script:FindFirstAncestor("UserProfiles").Parent.Cryo)
return function(arg1, arg2) -- Line 5
	--[[ Upvalues[1]:
		[1]: Cryo_upvr (readonly)
	]]
	local var5 = arg1.userProfiles[Cryo_upvr.List.findWhere(arg1.userProfiles, function(arg1_2, arg2_2) -- Line 6
		--[[ Upvalues[1]:
			[1]: arg2 (readonly)
		]]
		local var4
		if arg1_2.id ~= tostring(arg2) then
			var4 = false
		else
			var4 = true
		end
		return var4
	end)]
	if not var5 then
		var5 = {}
	end
	return var5
end