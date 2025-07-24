-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:51:21
-- Luau version 6, Types version 3
-- Time taken: 0.000849 seconds

local List_upvr = require(script:FindFirstAncestor("AppChat").Parent.Cryo).List
return function(arg1, arg2) -- Line 5, Named "isUserInList"
	--[[ Upvalues[1]:
		[1]: List_upvr (readonly)
	]]
	local var4
	if List_upvr.findWhere(arg1, function(arg1_2) -- Line 6
		--[[ Upvalues[1]:
			[1]: arg2 (readonly)
		]]
		local var3
		if arg1_2.id ~= arg2 then
			var3 = false
		else
			var3 = true
		end
		return var3
	end) == nil then
		var4 = false
	else
		var4 = true
	end
	return var4
end