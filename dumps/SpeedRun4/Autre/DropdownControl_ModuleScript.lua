-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:47:38
-- Luau version 6, Types version 3
-- Time taken: 0.003794 seconds

local Foundation = script:FindFirstAncestor("Foundation")
local React_upvr = require(Foundation.Parent.React)
local Components = Foundation.Components
local tbl_2_upvr = {
	isMenuOpen = false;
	placeholder = "";
}
local withDefaults_upvr = require(Foundation.Utility.withDefaults)
local useTokens_upvr = require(Foundation.Providers.Style.useTokens)
local ControlState_upvr = require(Foundation.Enums.ControlState)
local useDropdownVariants_upvr = require(script.Parent.useDropdownVariants)
local useCursor_upvr = require(Foundation.Providers.Cursor.useCursor)
local InputField_upvr = require(Components.InputField)
local withCommonProps_upvr = require(Foundation.Utility.withCommonProps)
local getInputTextSize_upvr = require(Foundation.Utility.getInputTextSize)
local Flags_upvr = require(Foundation.Utility.Flags)
local View_upvr = require(Components.View)
local StateLayerAffordance_upvr = require(Foundation.Enums.StateLayerAffordance)
local Text_upvr = require(Components.Text)
local Icon_upvr = require(Components.Icon)
return React_upvr.memo(React_upvr.forwardRef(function(arg1, arg2) -- Line 56, Named "DropdownControl"
	--[[ Upvalues[15]:
		[1]: withDefaults_upvr (readonly)
		[2]: tbl_2_upvr (readonly)
		[3]: useTokens_upvr (readonly)
		[4]: React_upvr (readonly)
		[5]: ControlState_upvr (readonly)
		[6]: useDropdownVariants_upvr (readonly)
		[7]: useCursor_upvr (readonly)
		[8]: InputField_upvr (readonly)
		[9]: withCommonProps_upvr (readonly)
		[10]: getInputTextSize_upvr (readonly)
		[11]: Flags_upvr (readonly)
		[12]: View_upvr (readonly)
		[13]: StateLayerAffordance_upvr (readonly)
		[14]: Text_upvr (readonly)
		[15]: Icon_upvr (readonly)
	]]
	local withDefaults_upvr_result1_upvr = withDefaults_upvr(arg1, tbl_2_upvr)
	local useTokens_upvr_result1 = useTokens_upvr()
	local var20 = ControlState_upvr
	local any_useState_result1, any_useState_result2_upvr = React_upvr.useState(var20.Initialize)
	local input
	if withDefaults_upvr_result1_upvr.item ~= nil then
		var20 = false
	else
		var20 = true
	end
	local module_2 = {}
	input = getInputTextSize_upvr(withDefaults_upvr_result1_upvr.size, false)
	module_2.size = input
	input = withDefaults_upvr_result1_upvr.hasError
	module_2.hasError = input
	input = withDefaults_upvr_result1_upvr.isDisabled
	module_2.isDisabled = input
	input = withDefaults_upvr_result1_upvr.label
	module_2.label = input
	input = withDefaults_upvr_result1_upvr.hint
	module_2.hint = input
	module_2.ref = arg2
	if Flags_upvr.FoundationFixInputFieldWidth then
		input = withDefaults_upvr_result1_upvr.width
	else
		input = nil
	end
	module_2.width = input
	local var8_result1_upvr = useDropdownVariants_upvr(useTokens_upvr_result1, withDefaults_upvr_result1_upvr.size, any_useState_result1, var20, withDefaults_upvr_result1_upvr.hasError or false)
	local var9_result1_upvr = useCursor_upvr({
		radius = UDim.new(0, useTokens_upvr_result1.Radius.Small);
		offset = useTokens_upvr_result1.Size.Size_200;
		borderWidth = useTokens_upvr_result1.Stroke.Thicker;
	})
	function input(arg1_2) -- Line 80
		--[[ Upvalues[10]:
			[1]: React_upvr (copied, readonly)
			[2]: View_upvr (copied, readonly)
			[3]: Flags_upvr (copied, readonly)
			[4]: withDefaults_upvr_result1_upvr (readonly)
			[5]: var8_result1_upvr (readonly)
			[6]: any_useState_result2_upvr (readonly)
			[7]: var9_result1_upvr (readonly)
			[8]: StateLayerAffordance_upvr (copied, readonly)
			[9]: Text_upvr (copied, readonly)
			[10]: Icon_upvr (copied, readonly)
		]]
		local module = {}
		local var29
		if Flags_upvr.FoundationFixInputFieldWidth then
			var29 = nil
		else
			var29 = UDim2.new(withDefaults_upvr_result1_upvr.width, var8_result1_upvr.container.height)
		end
		module.Size = var29
		var29 = any_useState_result2_upvr
		module.onStateChanged = var29
		var29 = withDefaults_upvr_result1_upvr.isDisabled
		module.isDisabled = var29
		var29 = withDefaults_upvr_result1_upvr.onActivated
		module.onActivated = var29
		var29 = {}
		var29.Selectable = not withDefaults_upvr_result1_upvr.isDisabled
		var29.SelectionImageObject = var9_result1_upvr
		module.selection = var29
		var29 = {}
		var29.affordance = StateLayerAffordance_upvr.None
		module.stateLayer = var29
		var29 = var8_result1_upvr.container.tag
		module.tag = var29
		var29 = withDefaults_upvr_result1_upvr.inputRef
		module.ref = var29
		var29 = "--foundation-dropdown-control"
		module.testId = var29
		var29 = {}
		local tbl = {}
		local var31 = 1
		tbl.LayoutOrder = var31
		if withDefaults_upvr_result1_upvr.item then
			var31 = withDefaults_upvr_result1_upvr.item.text
		else
			var31 = withDefaults_upvr_result1_upvr.placeholder
		end
		tbl.Text = var31
		tbl.tag = var8_result1_upvr.text.tag
		var29.Text = React_upvr.createElement(Text_upvr, tbl)
		local tbl_3 = {}
		local var33 = 2
		tbl_3.LayoutOrder = var33
		if withDefaults_upvr_result1_upvr.isMenuOpen then
			var33 = "truncate_arrows/actions_truncationCollapse"
		else
			var33 = "truncate_arrows/actions_truncationExpand"
		end
		tbl_3.name = var33
		tbl_3.size = var8_result1_upvr.arrow.size
		tbl_3.tag = var8_result1_upvr.text.tag
		var29.Arrow = React_upvr.createElement(Icon_upvr, tbl_3)
		return React_upvr.createElement(View_upvr, module, var29)
	end
	module_2.input = input
	return React_upvr.createElement(InputField_upvr, withCommonProps_upvr(withDefaults_upvr_result1_upvr, module_2))
end))