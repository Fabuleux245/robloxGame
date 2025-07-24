-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:07:44
-- Luau version 6, Types version 3
-- Time taken: 0.000734 seconds

local GameInvite = script:FindFirstAncestor("GameInvite")
local Parent = GameInvite.Parent
local React_upvr = require(Parent.React)
local GameInviteContextProvider_upvr = require(GameInvite.Context.GameInviteContextProvider)
local GameInviteContent_upvr = require(GameInvite.Components.GameInviteContent)
local FFlagLuaAppGameInviteFocusable_upvr = require(Parent.SharedFlags).FFlagLuaAppGameInviteFocusable
return function(arg1) -- Line 22
	--[[ Upvalues[4]:
		[1]: React_upvr (readonly)
		[2]: GameInviteContextProvider_upvr (readonly)
		[3]: GameInviteContent_upvr (readonly)
		[4]: FFlagLuaAppGameInviteFocusable_upvr (readonly)
	]]
	local module = {}
	local tbl = {}
	local isLoading = arg1.isLoading
	tbl.isLoadingCustomParams = isLoading
	if FFlagLuaAppGameInviteFocusable_upvr then
		isLoading = arg1.disableSelectionParentManagement
	else
		isLoading = nil
	end
	tbl.disableSelectionParentManagement = isLoading
	module.GameInviteContent = React_upvr.createElement(GameInviteContent_upvr, tbl)
	return React_upvr.createElement(GameInviteContextProvider_upvr, {
		options = arg1.options;
		serverType = arg1.serverType;
		gameDetails = arg1.gameDetails;
		isLoadingCustomParams = arg1.isLoading;
		isCoreScript = arg1.isCoreScript;
	}, module)
end