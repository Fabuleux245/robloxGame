-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:47:21
-- Luau version 6, Types version 3
-- Time taken: 0.004727 seconds

local Foundation = script:FindFirstAncestor("Foundation")
local React_upvr = require(Foundation.Parent.React)
local tbl_3_upvr = {
	isDisabled = false;
	isChecked = false;
}
local withDefaults_upvr = require(Foundation.Utility.withDefaults)
local useTokens_upvr = require(Foundation.Providers.Style.useTokens)
local useCursor_upvr = require(Foundation.Providers.Cursor.useCursor)
local CursorType_upvr = require(Foundation.Enums.CursorType)
local IconPosition_upvr = require(Foundation.Enums.IconPosition)
local View_upvr = require(Foundation.Components.View)
local withCommonProps_upvr = require(Foundation.Utility.withCommonProps)
local StateLayerMode_upvr = require(Foundation.Enums.StateLayerMode)
local Icon_upvr = require(Foundation.Components.Icon)
local IconSize_upvr = require(Foundation.Enums.IconSize)
local Text_upvr = require(Foundation.Components.Text)
return React_upvr.memo(React_upvr.forwardRef(function(arg1, arg2) -- Line 39, Named "Chip"
	--[[ Upvalues[13]:
		[1]: withDefaults_upvr (readonly)
		[2]: tbl_3_upvr (readonly)
		[3]: useTokens_upvr (readonly)
		[4]: useCursor_upvr (readonly)
		[5]: CursorType_upvr (readonly)
		[6]: React_upvr (readonly)
		[7]: IconPosition_upvr (readonly)
		[8]: View_upvr (readonly)
		[9]: withCommonProps_upvr (readonly)
		[10]: StateLayerMode_upvr (readonly)
		[11]: Icon_upvr (readonly)
		[12]: IconSize_upvr (readonly)
		[13]: Text_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	-- KONSTANTERROR: [0] 1. Error Block 43 start (CF ANALYSIS FAILED)
	local var4_result1_upvr = withDefaults_upvr(arg1, tbl_3_upvr)
	local any_useMemo_result1_2 = React_upvr.useMemo(function() -- Line 45
		--[[ Upvalues[2]:
			[1]: var4_result1_upvr (readonly)
			[2]: IconPosition_upvr (copied, readonly)
		]]
		if typeof(var4_result1_upvr.icon) == "string" then
			return {
				name = var4_result1_upvr.icon;
				position = IconPosition_upvr.Left;
			}
		end
		return var4_result1_upvr.icon
	end, {var4_result1_upvr.icon})
	local var32
	if var4_result1_upvr.isChecked then
	else
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	end
	local module = {}
	if var4_result1_upvr.isDisabled then
		var32 = 0.5
	else
		var32 = nil
	end
	module.GroupTransparency = var32
	var32 = {}
	var32.Selectable = not var4_result1_upvr.isDisabled
	var32.SelectionImageObject = useCursor_upvr(CursorType_upvr.SmallPill)
	module.selection = var32
	var32 = var4_result1_upvr.onActivated
	module.onActivated = var32
	var32 = var4_result1_upvr.isDisabled
	module.isDisabled = var32
	if var4_result1_upvr.isChecked then
		var32 = {}
		var32.mode = StateLayerMode_upvr.Inverse
	else
		var32 = nil
	end
	module.stateLayer = var32
	var32 = {}
	var32["row gap-xsmall size-0-700 padding-medium auto-x align-y-center align-x-center clip radius-circle"] = true
	var32["bg-action-sub-emphasis"] = var4_result1_upvr.isChecked
	var32["bg-shift-200"] = not var4_result1_upvr.isChecked
	module.tag = var32
	module.ref = arg2
	local module_2 = {}
	if any_useMemo_result1_2 then
		var32 = React_upvr
		var32 = Icon_upvr
		local tbl_2 = {
			name = any_useMemo_result1_2.name;
		}
		local Small = IconSize_upvr.Small
		tbl_2.size = Small
		tbl_2.style = useTokens_upvr().Color.Content.Emphasis
		if any_useMemo_result1_2.position == IconPosition_upvr.Left then
			Small = 1
		else
			Small = 3
		end
		tbl_2.LayoutOrder = Small
	else
	end
	module_2.Icon = nil
	var32 = var4_result1_upvr.text
	-- KONSTANTERROR: [0] 1. Error Block 43 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [143] 97. Error Block 40 start (CF ANALYSIS FAILED)
	var32 = var4_result1_upvr.text
	if var32 ~= "" then
		var32 = React_upvr
		var32 = Text_upvr
		local tbl_4 = {
			Text = var4_result1_upvr.text;
		}
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		tbl_4.textStyle = useTokens_upvr().Color.Content.Emphasis
		tbl_4.LayoutOrder = 2
		tbl_4.tag = "auto-x size-0-full shrink text-caption-large text-truncate-end"
	else
		-- KONSTANTERROR: [166] 112. Error Block 24 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [166] 112. Error Block 24 end (CF ANALYSIS FAILED)
	end
	module_2.Text = nil
	do
		return React_upvr.createElement(View_upvr, withCommonProps_upvr(var4_result1_upvr, module), module_2)
	end
	-- KONSTANTERROR: [143] 97. Error Block 40 end (CF ANALYSIS FAILED)
end))