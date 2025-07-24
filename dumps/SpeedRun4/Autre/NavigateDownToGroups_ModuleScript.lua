-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:37:28
-- Luau version 6, Types version 3
-- Time taken: 0.000811 seconds

local NavigationRodux = script:FindFirstAncestor("NavigationRodux")
local Parent = NavigationRodux.Parent
local t_upvr = require(Parent.t)
local NavigateDown_upvr = require(NavigationRodux.Thunks.NavigateDown)
local AppPage_upvr = require(Parent.RobloxAppEnums).AppPage
local UrlBuilder_upvr = require(Parent.UrlBuilder).UrlBuilder
local GetFFlagUseCommunitiesTranslation_upvr = require(Parent.SharedFlags).GetFFlagUseCommunitiesTranslation
return function(arg1) -- Line 14
	--[[ Upvalues[5]:
		[1]: t_upvr (readonly)
		[2]: NavigateDown_upvr (readonly)
		[3]: AppPage_upvr (readonly)
		[4]: UrlBuilder_upvr (readonly)
		[5]: GetFFlagUseCommunitiesTranslation_upvr (readonly)
	]]
	local any_callback_result1 = t_upvr.callback(arg1)
	if not any_callback_result1 then
		any_callback_result1 = t_upvr.none(arg1)
	end
	assert(any_callback_result1, "")
	local module = {
		name = AppPage_upvr.GenericWebPage;
	}
	local static = UrlBuilder_upvr.static
	module.detail = static.groups()
	local tbl = {}
	if GetFFlagUseCommunitiesTranslation_upvr() then
		static = "CommonUI.Features.Label.Groups"
	else
		static = "CommonUI.Features.Label.sGroups"
	end
	tbl.titleKey = static
	tbl.onClose = arg1
	module.extraProps = tbl
	return NavigateDown_upvr(module)
end