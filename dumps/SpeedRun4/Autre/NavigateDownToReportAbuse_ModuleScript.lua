-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:37:29
-- Luau version 6, Types version 3
-- Time taken: 0.001030 seconds

local NavigationRodux = script:FindFirstAncestor("NavigationRodux")
local Parent = NavigationRodux.Parent
local ArgCheck_upvr = require(Parent.ArgCheck)
local NavigateDown_upvr = require(NavigationRodux.Thunks.NavigateDown)
local AppPage_upvr = require(Parent.RobloxAppEnums).AppPage
local UrlBuilder_upvr = require(Parent.UrlBuilder).UrlBuilder
return function(arg1, arg2, arg3) -- Line 12
	--[[ Upvalues[4]:
		[1]: ArgCheck_upvr (readonly)
		[2]: NavigateDown_upvr (readonly)
		[3]: AppPage_upvr (readonly)
		[4]: UrlBuilder_upvr (readonly)
	]]
	ArgCheck_upvr.isInTypes(arg1, {"string", "number"}, "userId")
	ArgCheck_upvr.isInTypes(arg2, {"string", "number"}, "conversationId")
	ArgCheck_upvr.isTypeOrNil(arg3, "function", "onClose")
	local module = {
		name = AppPage_upvr.ReportAbuse;
	}
	local tbl = {}
	tbl.userId = arg1
	tbl.conversationId = arg2
	module.detail = UrlBuilder_upvr.user.report(tbl)
	local tbl_2 = {}
	tbl_2.onClose = arg3
	module.extraProps = tbl_2
	return NavigateDown_upvr(module)
end