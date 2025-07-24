-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:30:04
-- Luau version 6, Types version 3
-- Time taken: 0.001291 seconds

local FriendsLanding = script:FindFirstAncestor("FriendsLanding")
local dependencies = require(FriendsLanding.dependencies)
local GetFFlagRenameFriendsToConnectionsFriendsPage_upvr = dependencies.GetFFlagRenameFriendsToConnectionsFriendsPage
local LocalizedKeys_upvr = require(FriendsLanding.Enums.LocalizedKeys)
local Roact_upvr = dependencies.Roact
local HeaderBarRightView_upvr = require(FriendsLanding.Components.HeaderBarRightView)
return function(arg1) -- Line 11
	--[[ Upvalues[4]:
		[1]: GetFFlagRenameFriendsToConnectionsFriendsPage_upvr (readonly)
		[2]: LocalizedKeys_upvr (readonly)
		[3]: Roact_upvr (readonly)
		[4]: HeaderBarRightView_upvr (readonly)
	]]
	local module = {}
	local tbl = {}
	local var10
	if GetFFlagRenameFriendsToConnectionsFriendsPage_upvr() then
		var10 = LocalizedKeys_upvr.ConnectionsHeader.rawValue()
	else
		var10 = LocalizedKeys_upvr.FriendsHeader.rawValue()
	end
	tbl.raw = var10
	var10 = true
	tbl.shouldLocalize = var10
	module.headerText = tbl
	module.useSecondaryHeader = true
	module.shouldExitNavigation = false
	module.tabBarVisible = false
	function module.renderRight() -- Line 22
		--[[ Upvalues[3]:
			[1]: Roact_upvr (copied, readonly)
			[2]: HeaderBarRightView_upvr (copied, readonly)
			[3]: arg1 (readonly)
		]]
		return Roact_upvr.createElement(HeaderBarRightView_upvr, arg1)
	end
	module.transparent = true
	module.absorbInputSelectable = false
	return module
end