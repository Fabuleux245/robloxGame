-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:49:01
-- Luau version 6, Types version 3
-- Time taken: 0.003006 seconds

local Parent = script:FindFirstAncestor("AppChat").Parent
local React_upvr = require(Parent.React)
local tbl_2_upvr = {
	isIncoming = false;
	handleEvent = function(arg1, arg2, arg3) -- Line 14, Named "handleEvent"
	end;
}
local Cryo_upvr = require(Parent.Cryo)
local OptionsEnum_upvr = require(script.Parent.OptionsEnum)
local OptionsConstants_upvr = require(script.Parent.OptionsConstants)
local UIBlox_upvr = require(Parent.UIBlox)
function Options(arg1) -- Line 26
	--[[ Upvalues[6]:
		[1]: Cryo_upvr (readonly)
		[2]: tbl_2_upvr (readonly)
		[3]: React_upvr (readonly)
		[4]: OptionsEnum_upvr (readonly)
		[5]: OptionsConstants_upvr (readonly)
		[6]: UIBlox_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 20 start (CF ANALYSIS FAILED)
	local any_union_result1_upvr = Cryo_upvr.Dictionary.union(tbl_2_upvr, arg1)
	local module = {}
	local var14 = 1
	module.BackgroundTransparency = var14
	if any_union_result1_upvr.isIncoming then
		var14 = 2
	else
		var14 = 1
	end
	module.LayoutOrder = var14
	module.AutomaticSize = Enum.AutomaticSize.XY
	local module_2 = {
		UIListLayout = React_upvr.createElement("UIListLayout", {
			SortOrder = Enum.SortOrder.LayoutOrder;
			FillDirection = Enum.FillDirection.Horizontal;
			VerticalAlignment = Enum.VerticalAlignment.Center;
			Padding = UDim.new(0, OptionsConstants_upvr.INDIVIDUAL_ICON_HORIZONTAL_MARGIN);
		});
	}
	local tbl_3 = {}
	if any_union_result1_upvr.isIncoming then
		-- KONSTANTWARNING: GOTO [106] #74
	end
	-- KONSTANTERROR: [0] 1. Error Block 20 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [102] 71. Error Block 15 start (CF ANALYSIS FAILED)
	tbl_3.layoutOrder = OptionsConstants_upvr.NUM_DESKTOP_ICONS - 1
	tbl_3.icon = UIBlox_upvr.App.ImageSet.Images["icons/placeholder/placeholderOff"]
	tbl_3.iconSize = UIBlox_upvr.App.ImageSet.Enum.IconSize.Small
	tbl_3.iconTransparency = 0
	tbl_3.onActivated = React_upvr.useCallback(function() -- Line 29
		--[[ Upvalues[3]:
			[1]: any_union_result1_upvr (readonly)
			[2]: React_upvr (copied, readonly)
			[3]: OptionsEnum_upvr (copied, readonly)
		]]
		any_union_result1_upvr.handleEvent(React_upvr.Event.Activated, nil, OptionsEnum_upvr.Reply)
	end, {any_union_result1_upvr.handleEvent})
	module_2.Reply = React_upvr.createElement(UIBlox_upvr.App.Button.IconButton, tbl_3)
	local App = UIBlox_upvr.App
	local tbl = {}
	if any_union_result1_upvr.isIncoming then
		App = 2
	else
		App = OptionsConstants_upvr.NUM_DESKTOP_ICONS - 2
	end
	tbl.layoutOrder = App
	tbl.icon = UIBlox_upvr.App.ImageSet.Images["icons/actions/overflow"]
	tbl.iconSize = UIBlox_upvr.App.ImageSet.Enum.IconSize.Small
	tbl.iconTransparency = 0
	tbl.onActivated = React_upvr.useCallback(function() -- Line 33
		--[[ Upvalues[3]:
			[1]: any_union_result1_upvr (readonly)
			[2]: React_upvr (copied, readonly)
			[3]: OptionsEnum_upvr (copied, readonly)
		]]
		any_union_result1_upvr.handleEvent(React_upvr.Event.Activated, nil, OptionsEnum_upvr.MessageContextMenu)
	end, {any_union_result1_upvr.handleEvent})
	module_2.MessageContextMenu = React_upvr.createElement(App.Button.IconButton, tbl)
	do
		return React_upvr.createElement("Frame", module, module_2)
	end
	-- KONSTANTERROR: [102] 71. Error Block 15 end (CF ANALYSIS FAILED)
end
return React_upvr.memo(Options)