-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:35:25
-- Luau version 6, Types version 3
-- Time taken: 0.004123 seconds

local Parent = script:FindFirstAncestor("GenericAbuseReporting").Parent
local Foundation = require(Parent.Foundation)
local game_DefineFastFlag_result1_upvr = game:DefineFastFlag("SideModalDropdownVisualUpdate2", false)
local var4_upvr
if game_DefineFastFlag_result1_upvr then
	var4_upvr = "icons/actions/truncationExpand"
else
	var4_upvr = "icons/navigation/cycleDown"
end
local useTokens_upvr = Foundation.Hooks.useTokens
local React_upvr = require(Parent.React)
local useLocalization_upvr = require(Parent.Localization).Hooks.useLocalization
local ControlState_upvr = Foundation.Enums.ControlState
local View_upvr = Foundation.View
local Text_upvr = Foundation.Text
local Icon_upvr = Foundation.Icon
local IconSize_upvr = Foundation.Enums.IconSize
return function(arg1) -- Line 30, Named "SideModalDropdown"
	--[[ Upvalues[10]:
		[1]: useTokens_upvr (readonly)
		[2]: React_upvr (readonly)
		[3]: useLocalization_upvr (readonly)
		[4]: ControlState_upvr (readonly)
		[5]: View_upvr (readonly)
		[6]: game_DefineFastFlag_result1_upvr (readonly)
		[7]: Text_upvr (readonly)
		[8]: Icon_upvr (readonly)
		[9]: var4_upvr (readonly)
		[10]: IconSize_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	-- KONSTANTERROR: [0] 1. Error Block 52 start (CF ANALYSIS FAILED)
	local var5_result1 = useTokens_upvr()
	local any_useState_result1, any_useState_result2_upvr = React_upvr.useState(false)
	local module = {}
	local var20
	if game_DefineFastFlag_result1_upvr then
		var20 = UDim2.new(0, 0, 0, 48)
	else
		var20 = UDim2.new(1, 0, 0, 48)
	end
	module.Size = var20
	if game_DefineFastFlag_result1_upvr then
		var20 = "auto-x radius-medium align-x-left align-y-center padding-xxsmall bg-shift-100"
	else
		var20 = "radius-medium align-x-left align-y-center padding-xxsmall"
	end
	module.tag = var20
	module.onStateChanged = React_upvr.useCallback(function(arg1_2) -- Line 37
		--[[ Upvalues[2]:
			[1]: ControlState_upvr (copied, readonly)
			[2]: any_useState_result2_upvr (readonly)
		]]
		if arg1_2 == ControlState_upvr.Hover then
			any_useState_result2_upvr(true)
		else
			any_useState_result2_upvr(false)
		end
	end, {any_useState_result2_upvr})
	var20 = arg1.onActivated
	module.onActivated = var20
	var20 = {}
	local tbl_2 = {
		ApplyStrokeMode = Enum.ApplyStrokeMode.Border;
	}
	if arg1.isDropdownError then
		-- KONSTANTWARNING: GOTO [103] #75
	end
	-- KONSTANTERROR: [0] 1. Error Block 52 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [84] 64. Error Block 55 start (CF ANALYSIS FAILED)
	if game_DefineFastFlag_result1_upvr then
	else
	end
	tbl_2.Color = var5_result1.Color.Content.Emphasis.Color3
	if game_DefineFastFlag_result1_upvr then
		if arg1.isDropdownError then
		elseif any_useState_result1 then
		else
		end
	elseif any_useState_result1 then
	else
	end
	tbl_2.Transparency = var5_result1.Color.Content.Muted.Transparency
	if game_DefineFastFlag_result1_upvr then
	else
	end
	tbl_2.Thickness = 1
	var20.UIStroke = React_upvr.createElement("UIStroke", tbl_2)
	var20.UIListLayout = React_upvr.createElement("UIListLayout", {
		HorizontalFlex = Enum.UIFlexAlignment.SpaceBetween;
		FillDirection = Enum.FillDirection.Horizontal;
		SortOrder = Enum.SortOrder.LayoutOrder;
		VerticalAlignment = Enum.VerticalAlignment.Center;
	})
	local tbl = {}
	if not arg1.text then
	end
	tbl.Text = useLocalization_upvr({
		ChooseOne = "Feature.ReportAbuse.Label.ChooseOne";
	}).ChooseOne
	tbl.TextXAlignment = Enum.TextXAlignment.Left
	tbl.Size = UDim2.new(1, -44, 1, 0)
	tbl.tag = "text-truncate-split padding-left-small"
	tbl.LayoutOrder = 0
	var20.Text = React_upvr.createElement(Text_upvr, tbl)
	var20.IconContainer = React_upvr.createElement(View_upvr, {
		tag = "auto-xy padding-right-small";
		LayoutOrder = 1;
	}, {
		Icon = React_upvr.createElement(Icon_upvr, {
			name = var4_upvr;
			size = IconSize_upvr.Medium;
			LayoutOrder = 1;
		});
	})
	do
		return React_upvr.createElement(View_upvr, module, var20)
	end
	-- KONSTANTERROR: [84] 64. Error Block 55 end (CF ANALYSIS FAILED)
end