-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:48:25
-- Luau version 6, Types version 3
-- Time taken: 0.006182 seconds

local Foundation = script:FindFirstAncestor("Foundation")
local React_upvr = require(Foundation.Parent.React)
local Components = Foundation.Components
local tbl_7_upvr = {
	size = require(Foundation.Enums.InputSize).Large;
	width = UDim.new(0, 400);
}
local withDefaults_upvr = require(Foundation.Utility.withDefaults)
local useTokens_upvr = require(Foundation.Providers.Style.useTokens)
local useTextInputVariants_upvr = require(Foundation.Components.TextInput.useTextInputVariants)
local InputField_upvr = require(Components.InputField)
local withCommonProps_upvr = require(Foundation.Utility.withCommonProps)
local getInputTextSize_upvr = require(Foundation.Utility.getInputTextSize)
local InternalTextInput_upvr = require(Components.InternalTextInput)
local View_upvr = require(Components.View)
local Icon_upvr = require(Components.Icon)
local IconButton_upvr = require(Components.IconButton)
return React_upvr.memo(React_upvr.forwardRef(function(arg1, arg2) -- Line 71, Named "TextInput"
	--[[ Upvalues[12]:
		[1]: withDefaults_upvr (readonly)
		[2]: tbl_7_upvr (readonly)
		[3]: useTokens_upvr (readonly)
		[4]: useTextInputVariants_upvr (readonly)
		[5]: React_upvr (readonly)
		[6]: InputField_upvr (readonly)
		[7]: withCommonProps_upvr (readonly)
		[8]: getInputTextSize_upvr (readonly)
		[9]: InternalTextInput_upvr (readonly)
		[10]: View_upvr (readonly)
		[11]: Icon_upvr (readonly)
		[12]: IconButton_upvr (readonly)
	]]
	local var5_result1_upvr = withDefaults_upvr(arg1, tbl_7_upvr)
	local module = {
		width = var5_result1_upvr.width;
	}
	module.ref = arg2
	module.label = var5_result1_upvr.label
	module.size = getInputTextSize_upvr(var5_result1_upvr.size, false)
	module.isRequired = var5_result1_upvr.isRequired
	module.hint = var5_result1_upvr.hint
	module.textBoxRef = var5_result1_upvr.textBoxRef
	local var7_result1_upvr = useTextInputVariants_upvr(useTokens_upvr(), var5_result1_upvr.size)
	function module.input(arg1_2) -- Line 87
		--[[ Upvalues[7]:
			[1]: React_upvr (copied, readonly)
			[2]: InternalTextInput_upvr (copied, readonly)
			[3]: var5_result1_upvr (readonly)
			[4]: var7_result1_upvr (readonly)
			[5]: View_upvr (copied, readonly)
			[6]: Icon_upvr (copied, readonly)
			[7]: IconButton_upvr (copied, readonly)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 27 start (CF ANALYSIS FAILED)
		local tbl_3 = {}
		tbl_3.ref = arg1_2
		tbl_3.hasError = var5_result1_upvr.hasError
		tbl_3.isDisabled = var5_result1_upvr.isDisabled
		tbl_3.text = var5_result1_upvr.text
		tbl_3.textInputType = var5_result1_upvr.textInputType
		tbl_3.size = var5_result1_upvr.size
		tbl_3.padding = var7_result1_upvr.innerContainer.padding
		tbl_3.onChanged = var5_result1_upvr.onChanged
		tbl_3.onFocus = var5_result1_upvr.onFocusGained
		tbl_3.onFocusLost = var5_result1_upvr.onFocusLost
		tbl_3.onReturnPressed = var5_result1_upvr.onReturnPressed
		local placeholder_2 = var5_result1_upvr.placeholder
		tbl_3.placeholder = placeholder_2
		local var29
		if var5_result1_upvr.iconLeading then
			placeholder_2 = React_upvr.createElement
			local tbl_6 = {}
			var29 = var5_result1_upvr.iconLeading
			tbl_6.name = var29
			var29 = var7_result1_upvr.icon.style
			tbl_6.style = var29
			var29 = var7_result1_upvr.icon.size
			tbl_6.size = var29
			placeholder_2 = placeholder_2(View_upvr, {
				tag = "size-0-full auto-x row align-y-center";
			}, React_upvr.createElement(Icon_upvr, tbl_6))
		else
			placeholder_2 = nil
		end
		tbl_3.leadingElement = placeholder_2
		-- KONSTANTERROR: [0] 1. Error Block 27 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [110] 72. Error Block 28 start (CF ANALYSIS FAILED)
		;({}).tag = "size-0-full auto-x row align-y-center"
		var29 = var5_result1_upvr
		if type(var29.iconTrailing) == "table" then
			var29 = var5_result1_upvr
			if var29.iconTrailing.onActivated then
				local tbl_9 = {}
				var29 = var5_result1_upvr.iconTrailing.onActivated
				tbl_9.onActivated = var29
				var29 = var5_result1_upvr.isDisabled
				tbl_9.isDisabled = var29
				var29 = var7_result1_upvr.icon.size
				tbl_9.size = var29
				var29 = var5_result1_upvr.iconTrailing.name
				tbl_9.icon = var29
				-- KONSTANTWARNING: GOTO [206] #135
			end
		end
		local tbl_2 = {}
		if type(var5_result1_upvr.iconTrailing) == "table" then
			var29 = var5_result1_upvr.iconTrailing.name
		else
			var29 = var5_result1_upvr.iconTrailing
		end
		tbl_2.name = var29
		var29 = var7_result1_upvr.icon.style
		tbl_2.style = var29
		var29 = var7_result1_upvr.icon.size
		tbl_2.size = var29
		-- KONSTANTERROR: [110] 72. Error Block 28 end (CF ANALYSIS FAILED)
	end
	return React_upvr.createElement(InputField_upvr, withCommonProps_upvr(var5_result1_upvr, module))
end))