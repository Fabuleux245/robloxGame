-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:02:45
-- Luau version 6, Types version 3
-- Time taken: 0.000411 seconds

local PlayerMenuActions_upvr = require(script:FindFirstAncestor("AbuseReportMenu").Components.Constants).PlayerMenuActions
return function(arg1, arg2) -- Line 6, Named "reportExperienceUIStateReducer"
	--[[ Upvalues[1]:
		[1]: PlayerMenuActions_upvr (readonly)
	]]
	local clone = table.clone(arg1)
	if arg2.type == PlayerMenuActions_upvr.UpdateComment then
		clone.comment = arg2.comment
	end
	return clone
end