-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:31:27
-- Luau version 6, Types version 3
-- Time taken: 0.000965 seconds

local Cryo_upvr = require(script:FindFirstAncestor("SquadsCore").Parent.Cryo)
return function(arg1, arg2) -- Line 18, Named "getSquadMemberFromUserId"
	--[[ Upvalues[1]:
		[1]: Cryo_upvr (readonly)
	]]
	if arg1 and arg1.members then
		local any_findWhere_result1 = Cryo_upvr.List.findWhere(arg1.members, function(arg1_3) -- Line 20
			--[[ Upvalues[1]:
				[1]: arg2 (readonly)
			]]
			local var6
			if arg1_3.userId ~= arg2 then
				var6 = false
			else
				var6 = true
			end
			return var6
		end)
		if any_findWhere_result1 then
			return arg1.members[any_findWhere_result1]
		end
	end
	return nil
end