-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:29:57
-- Luau version 6, Types version 3
-- Time taken: 0.004364 seconds

local Parent = script:FindFirstAncestor("Songbird").Parent
local React_upvr = require(Parent.React)
local Foundation = require(Parent.Foundation)
local tbl_upvr = {
	isDisabled = false;
	isChecked = false;
}
local withDefaults_upvr = Foundation.Utility.withDefaults
local useTokens_upvr = Foundation.Hooks.useTokens
local useCursor_upvr = Foundation.Hooks.useCursor
local CursorType_upvr = Foundation.Enums.CursorType
local IconPosition_upvr = Foundation.Enums.IconPosition
local View_upvr = Foundation.View
local withCommonProps_upvr = Foundation.Utility.withCommonProps
local StateLayerMode_upvr = Foundation.Enums.StateLayerMode
local Icon_upvr = Foundation.Icon
local IconSize_upvr = Foundation.Enums.IconSize
local Text_upvr = Foundation.Text
return React_upvr.memo(React_upvr.forwardRef(function(arg1, arg2) -- Line 48, Named "Chip"
	--[[ Upvalues[13]:
		[1]: withDefaults_upvr (readonly)
		[2]: tbl_upvr (readonly)
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
	-- KONSTANTERROR: [0] 1. Error Block 36 start (CF ANALYSIS FAILED)
	local withDefaults_upvr_result1_upvr = withDefaults_upvr(arg1, tbl_upvr)
	local any_useMemo_result1_2 = React_upvr.useMemo(function() -- Line 54
		--[[ Upvalues[2]:
			[1]: withDefaults_upvr_result1_upvr (readonly)
			[2]: IconPosition_upvr (copied, readonly)
		]]
		if typeof(withDefaults_upvr_result1_upvr.icon) == "string" then
			return {
				name = withDefaults_upvr_result1_upvr.icon;
				position = IconPosition_upvr.Left;
			}
		end
		return withDefaults_upvr_result1_upvr.icon
	end, {withDefaults_upvr_result1_upvr.icon})
	local var33
	if withDefaults_upvr_result1_upvr.isChecked then
	else
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	end
	local module_2 = {}
	if withDefaults_upvr_result1_upvr.isDisabled then
		var33 = 0.5
	else
		var33 = nil
	end
	module_2.GroupTransparency = var33
	var33 = {}
	var33.Selectable = not withDefaults_upvr_result1_upvr.isDisabled
	var33.SelectionImageObject = useCursor_upvr(CursorType_upvr.SmallPill)
	module_2.selection = var33
	var33 = withDefaults_upvr_result1_upvr.onActivated
	module_2.onActivated = var33
	var33 = withDefaults_upvr_result1_upvr.isDisabled
	module_2.isDisabled = var33
	var33 = {}
	var33.mode = StateLayerMode_upvr.Inverse
	module_2.stateLayer = var33
	var33 = {}
	var33["row gap-xsmall size-0-800 padding-medium auto-x align-y-center align-x-center clip radius-circle"] = true
	var33["bg-action-sub-emphasis"] = withDefaults_upvr_result1_upvr.isChecked
	var33["bg-shift-200"] = not withDefaults_upvr_result1_upvr.isChecked
	module_2.tag = var33
	module_2.ref = arg2
	local module = {}
	if any_useMemo_result1_2 then
		var33 = React_upvr
		var33 = Icon_upvr
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
	module.Icon = nil
	var33 = withDefaults_upvr_result1_upvr.text
	-- KONSTANTERROR: [0] 1. Error Block 36 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [138] 93. Error Block 34 start (CF ANALYSIS FAILED)
	var33 = withDefaults_upvr_result1_upvr.text
	if var33 ~= "" then
		var33 = React_upvr
		var33 = Text_upvr
		local tbl_5 = {
			Text = withDefaults_upvr_result1_upvr.text;
		}
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		tbl_5.textStyle = useTokens_upvr().Color.Content.Emphasis
		tbl_5.LayoutOrder = 2
		tbl_5.tag = "auto-x size-0-full shrink text-caption-large text-truncate-end"
	else
		-- KONSTANTERROR: [161] 108. Error Block 20 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [161] 108. Error Block 20 end (CF ANALYSIS FAILED)
	end
	module.Text = nil
	do
		return React_upvr.createElement(View_upvr, withCommonProps_upvr(withDefaults_upvr_result1_upvr, module_2), module)
	end
	-- KONSTANTERROR: [138] 93. Error Block 34 end (CF ANALYSIS FAILED)
end))