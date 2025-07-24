-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:50:29
-- Luau version 6, Types version 3
-- Time taken: 0.001083 seconds

local populateUserWithState_upvr = require(script:FindFirstAncestor("AppChat").Users.populateUserWithState)
local Logger_upvr = require(script.Parent.Parent.Logger)
return function(arg1, arg2, arg3) -- Line 5
	--[[ Upvalues[2]:
		[1]: populateUserWithState_upvr (readonly)
		[2]: Logger_upvr (readonly)
	]]
	for i, v in pairs(arg2) do
		local var11 = arg1.Users[v]
		local var12
		if arg3 then
			var12 = arg3[i]
		else
			var12 = nil
		end
		if var11 then
			({})[var11.id] = populateUserWithState_upvr(arg1, var11, var12)
		else
			Logger_upvr:warning("user is required in selectChatUserEntryModelList")
		end
	end
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	return {}
end