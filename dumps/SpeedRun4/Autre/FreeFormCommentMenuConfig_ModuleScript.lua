-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:02:39
-- Luau version 6, Types version 3
-- Time taken: 0.001111 seconds

local module = {
	componentType = "freeComments";
	getIsVisible = function(arg1) -- Line 7, Named "getIsVisible"
		return true
	end;
}
local Constants_upvr = require(script:FindFirstAncestor("AbuseReportMenu").Components.Constants)
function module.onUpdate(arg1, arg2, arg3, arg4) -- Line 10
	--[[ Upvalues[1]:
		[1]: Constants_upvr (readonly)
	]]
	local tbl = {}
	local SetCommentAdded = Constants_upvr.AnalyticsActions.SetCommentAdded
	tbl.type = SetCommentAdded
	if 0 >= #arg1 then
		SetCommentAdded = false
	else
		SetCommentAdded = true
	end
	tbl.commentAdded = SetCommentAdded
	arg4.analyticsDispatch(tbl)
	local tbl_2 = {
		type = Constants_upvr.PlayerMenuActions.UpdateComment;
	}
	tbl_2.comment = arg1
	arg3(tbl_2)
end
module.componentName = "FreeComments"
return module