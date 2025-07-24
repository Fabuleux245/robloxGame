-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:46:34
-- Luau version 6, Types version 3
-- Time taken: 0.001594 seconds

local AdPlayer = script:FindFirstAncestor("AdPlayer")
local Parent = AdPlayer.Parent
local Foundation = require(Parent.Foundation)
local React_upvr = require(Parent.React)
local View_upvr = Foundation.View
local Flags_upvr = require(AdPlayer.Flags)
local Text_upvr = Foundation.Text
local Image_upvr = Foundation.Image
local StateLayerAffordance_upvr = Foundation.Enums.StateLayerAffordance
return function(arg1) -- Line 17
	--[[ Upvalues[6]:
		[1]: React_upvr (readonly)
		[2]: View_upvr (readonly)
		[3]: Flags_upvr (readonly)
		[4]: Text_upvr (readonly)
		[5]: Image_upvr (readonly)
		[6]: StateLayerAffordance_upvr (readonly)
	]]
	local Visible = arg1.Visible
	local module = {}
	local var13
	if Flags_upvr.GetEnableLuaRewardTimerUI() then
		var13 = "size-900-500 row align-x-center align-y-center gap-xsmall"
	else
		var13 = "position-center-left anchor-center-left size-900-500 row align-x-center align-y-center gap-xsmall"
	end
	module.tag = var13
	var13 = {}
	var13.adText = React_upvr.createElement(Text_upvr, {
		tag = "size-400 content-emphasis text-body-small";
		Text = "Ad";
		TextScaled = true;
		Visible = Visible;
	})
	var13.icon = React_upvr.createElement(Image_upvr, {
		tag = "size-300";
		Image = arg1.Image;
		LayoutOrder = 2;
		onActivated = arg1.handleToggleAdsModal;
		Visible = Visible;
		stateLayer = {
			affordance = StateLayerAffordance_upvr.None;
		};
	})
	return React_upvr.createElement(View_upvr, module, var13)
end