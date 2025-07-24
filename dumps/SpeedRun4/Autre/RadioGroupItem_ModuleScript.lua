-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:48:13
-- Luau version 6, Types version 3
-- Time taken: 0.002715 seconds

local Foundation = script:FindFirstAncestor("Foundation")
local React_upvr = require(Foundation.Parent.React)
local Components = Foundation.Components
local tbl_upvr = {
	size = require(Foundation.Enums.InputSize).Medium;
	isDisabled = false;
}
local withDefaults_upvr = require(Foundation.Utility.withDefaults)
local useCheckedValue_upvr = require(script.Parent.Parent.useCheckedValue)
local useTokens_upvr = require(Foundation.Providers.Style.useTokens)
local useRadioGroupItemVariants_upvr = require(script.Parent.useRadioGroupItemVariants)
local InternalInput_upvr = require(Components.InternalInput)
local withCommonProps_upvr = require(Foundation.Utility.withCommonProps)
local View_upvr = require(Components.View)
return React_upvr.memo(React_upvr.forwardRef(function(arg1, arg2) -- Line 40, Named "RadioGroupItem"
	--[[ Upvalues[9]:
		[1]: withDefaults_upvr (readonly)
		[2]: tbl_upvr (readonly)
		[3]: useCheckedValue_upvr (readonly)
		[4]: useTokens_upvr (readonly)
		[5]: React_upvr (readonly)
		[6]: useRadioGroupItemVariants_upvr (readonly)
		[7]: InternalInput_upvr (readonly)
		[8]: withCommonProps_upvr (readonly)
		[9]: View_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local withDefaults_upvr_result1_upvr = withDefaults_upvr(arg1, tbl_upvr)
	local isDisabled = withDefaults_upvr_result1_upvr.isDisabled
	local useCheckedValue_upvr_result1, useCheckedValue_upvr_result2_upvr = useCheckedValue_upvr()
	local var16
	if useCheckedValue_upvr_result1 ~= withDefaults_upvr_result1_upvr.value then
		var16 = false
	else
		var16 = true
	end
	if not withDefaults_upvr_result1_upvr.label then
	end
	local var8_result1 = useRadioGroupItemVariants_upvr(useTokens_upvr(), withDefaults_upvr_result1_upvr.size)
	local module_2 = {
		isChecked = var16;
		isDisabled = isDisabled;
		onActivated = React_upvr.useCallback(function() -- Line 50
			--[[ Upvalues[2]:
				[1]: useCheckedValue_upvr_result2_upvr (readonly)
				[2]: withDefaults_upvr_result1_upvr (readonly)
			]]
			useCheckedValue_upvr_result2_upvr(withDefaults_upvr_result1_upvr.value)
		end, {isDisabled, withDefaults_upvr_result1_upvr.value, useCheckedValue_upvr_result2_upvr});
		label = {
			text = withDefaults_upvr_result1_upvr.value;
		};
		customVariantProps = var8_result1.input;
		size = withDefaults_upvr_result1_upvr.size;
	}
	local module = {}
	if var16 then
		module_2 = React_upvr.createElement
		module_2 = module_2(View_upvr, {
			tag = var8_result1.checkmark.tag;
			backgroundStyle = var8_result1.checkmark.style;
		})
	else
		module_2 = nil
	end
	module.Center = module_2
	return React_upvr.createElement(InternalInput_upvr, withCommonProps_upvr(withDefaults_upvr_result1_upvr, module_2), module)
end))