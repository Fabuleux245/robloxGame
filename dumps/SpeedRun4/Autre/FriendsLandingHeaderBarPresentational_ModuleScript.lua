-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:30:01
-- Luau version 6, Types version 3
-- Time taken: 0.001803 seconds

local FriendsLanding = script:FindFirstAncestor("FriendsLanding")
local Parent = FriendsLanding.Parent
local dependencies = require(FriendsLanding.dependencies)
local useUiModeInfo_upvr = require(Parent.RobloxAppHooks).useUiModeInfo
local UiMode_upvr = require(Parent.RobloxAppEnums).UiMode
local React_upvr = require(Parent.React)
local Constants_upvr = require(FriendsLanding.Common.Constants)
local HeaderBar_upvr = dependencies.UIBlox.App.Bar.HeaderBar
local GetFFlagFixConnectTabSearchBarHeight_upvr = dependencies.GetFFlagFixConnectTabSearchBarHeight
return function(arg1) -- Line 16, Named "FriendsLandingHeaderBarPresentational"
	--[[ Upvalues[6]:
		[1]: useUiModeInfo_upvr (readonly)
		[2]: UiMode_upvr (readonly)
		[3]: React_upvr (readonly)
		[4]: Constants_upvr (readonly)
		[5]: HeaderBar_upvr (readonly)
		[6]: GetFFlagFixConnectTabSearchBarHeight_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var10
	if useUiModeInfo_upvr().uiMode ~= UiMode_upvr.TenFoot then
		var10 = false
	else
		var10 = true
	end
	if var10 then
		return nil
	end
	local module = {}
	local tbl = {
		title = arg1.title;
		barHeight = Constants_upvr.TOP_BAR_HEIGHT;
		renderLeft = arg1.renderLeft;
		renderCenter = arg1.renderCenter;
		renderRight = arg1.renderRight;
		isSecondary = arg1.isSecondary;
		shouldHideSecondaryLeftItem = arg1.shouldHideSecondaryLeftItem;
	}
	if GetFFlagFixConnectTabSearchBarHeight_upvr() then
	else
	end
	tbl.paddingTop = nil
	if GetFFlagFixConnectTabSearchBarHeight_upvr() then
	else
	end
	tbl.paddingBottom = nil
	module.headerBar = React_upvr.createElement(HeaderBar_upvr, tbl)
	return React_upvr.createElement("Frame", {
		BackgroundTransparency = 1;
		Size = UDim2.new(1, 0, 0, Constants_upvr.TOP_BAR_HEIGHT);
		LayoutOrder = -1;
		ZIndex = 2;
	}, module)
end