-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:37:30
-- Luau version 6, Types version 3
-- Time taken: 0.000546 seconds

local NavigationRodux = script:FindFirstAncestor("NavigationRodux")
local Parent = NavigationRodux.Parent
local ArgCheck_upvr = require(Parent.ArgCheck)
local NavigateDown_upvr = require(NavigationRodux.Thunks.NavigateDown)
local AppPage_upvr = require(Parent.RobloxAppEnums).AppPage
return function(arg1, arg2) -- Line 10
	--[[ Upvalues[3]:
		[1]: ArgCheck_upvr (readonly)
		[2]: NavigateDown_upvr (readonly)
		[3]: AppPage_upvr (readonly)
	]]
	ArgCheck_upvr.isInTypes(arg1, {"string", "number"}, "userId")
	ArgCheck_upvr.isTypeOrNil(arg2, "function", "onClose")
	local module = {
		name = AppPage_upvr.ViewUserProfile;
	}
	module.detail = arg1
	local tbl = {}
	tbl.onClose = arg2
	module.extraProps = tbl
	return NavigateDown_upvr(module)
end