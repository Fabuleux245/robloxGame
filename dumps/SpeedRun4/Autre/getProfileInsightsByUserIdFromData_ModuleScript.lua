-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:18:36
-- Luau version 6, Types version 3
-- Time taken: 0.000901 seconds

local Cryo_upvr = require(script:FindFirstAncestor("ApolloProfileInsights").Parent.Cryo)
return function(arg1, arg2) -- Line 12
	--[[ Upvalues[1]:
		[1]: Cryo_upvr (readonly)
	]]
	if not arg1 or not arg1.profilesInsightsByUserIds then
		return nil
	end
	local profilesInsightsByUserIds = arg1.profilesInsightsByUserIds
	return profilesInsightsByUserIds[Cryo_upvr.List.findWhere(profilesInsightsByUserIds, function(arg1_2, arg2_2) -- Line 20
		--[[ Upvalues[1]:
			[1]: arg2 (readonly)
		]]
		local var6
		if arg1_2.targetUserId ~= tostring(arg2) then
			var6 = false
		else
			var6 = true
		end
		return var6
	end)]
end