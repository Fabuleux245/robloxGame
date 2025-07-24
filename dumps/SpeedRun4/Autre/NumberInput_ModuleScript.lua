-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:48:04
-- Luau version 6, Types version 3
-- Time taken: 0.002279 seconds

local Foundation = script:FindFirstAncestor("Foundation")
local React_upvr = require(Foundation.Parent.React)
local Components = Foundation.Components
local function _(arg1, arg2) -- Line 25, Named "round"
	local var4 = 10 ^ (arg2 or 0)
	return math.floor(arg1 * var4 + 0.5) / var4
end
local tbl_upvr = {
	size = require(Foundation.Enums.InputSize).Large;
	minimum = (-math.huge);
	maximum = math.huge;
	step = 1;
	precision = 3;
	value = 0;
	formatAsString = function(arg1) -- Line 60, Named "defaultFormatAsString"
		return tostring(arg1)
	end;
	width = UDim.new(0, 400);
}
local withDefaults_upvr = require(Foundation.Utility.withDefaults)
local useTokens_upvr = require(Foundation.Providers.Style.useTokens)
local useTextInputVariants_upvr = require(Components.TextInput.useTextInputVariants)
local NumberInputControls_upvr = require(script.Parent.NumberInputControls)
local InputField_upvr = require(Components.InputField)
local withCommonProps_upvr = require(Foundation.Utility.withCommonProps)
local getInputTextSize_upvr = require(Foundation.Utility.getInputTextSize)
local InternalTextInput_upvr = require(Components.InternalTextInput)
return React_upvr.memo(React_upvr.forwardRef(function(arg1, arg2) -- Line 75, Named "NumberInput"
	--[[ Upvalues[10]:
		[1]: withDefaults_upvr (readonly)
		[2]: tbl_upvr (readonly)
		[3]: useTokens_upvr (readonly)
		[4]: useTextInputVariants_upvr (readonly)
		[5]: React_upvr (readonly)
		[6]: NumberInputControls_upvr (readonly)
		[7]: InputField_upvr (readonly)
		[8]: withCommonProps_upvr (readonly)
		[9]: getInputTextSize_upvr (readonly)
		[10]: InternalTextInput_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	local withDefaults_upvr_result1 = withDefaults_upvr(arg1, tbl_upvr)
	local any_useState_result1, any_useState_result2 = React_upvr.useState(false)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [21] 20. Error Block 25 start (CF ANALYSIS FAILED)
	local var17 = 10 ^ (withDefaults_upvr_result1.precision or 0)
	if withDefaults_upvr_result1.maximum >= math.floor((withDefaults_upvr_result1.value + withDefaults_upvr_result1.step) * var17 + 0.5) / var17 then
	else
	end
	local var18 = 10 ^ (withDefaults_upvr_result1.precision or 0)
	if math.floor((withDefaults_upvr_result1.value - withDefaults_upvr_result1.step) * var18 + 0.5) / var18 >= withDefaults_upvr_result1.minimum then
		-- KONSTANTWARNING: GOTO [67] #54
	end
	-- KONSTANTERROR: [21] 20. Error Block 25 end (CF ANALYSIS FAILED)
end))