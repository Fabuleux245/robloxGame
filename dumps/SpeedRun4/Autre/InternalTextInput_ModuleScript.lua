-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:47:55
-- Luau version 6, Types version 3
-- Time taken: 0.004450 seconds

local Foundation = script:FindFirstAncestor("Foundation")
local React_upvr = require(Foundation.Parent.React)
local Components = Foundation.Components
local tbl_2_upvr = {
	size = require(Foundation.Enums.InputSize).Large;
}
local withDefaults_upvr = require(Foundation.Utility.withDefaults)
local useTokens_upvr = require(Foundation.Providers.Style.useTokens)
local useTextInputVariants_upvr = require(Components.TextInput.useTextInputVariants)
local ControlState_upvr = require(Foundation.Enums.ControlState)
local Flags_upvr = require(Foundation.Utility.Flags)
local useStyleTags_upvr = require(Foundation.Providers.Style.useStyleTags)
local useCursor_upvr = require(Foundation.Providers.Cursor.useCursor)
local View_upvr = require(Components.View)
local withCommonProps_upvr = require(Foundation.Utility.withCommonProps)
local StateLayerAffordance_upvr = require(Foundation.Enums.StateLayerAffordance)
local isPluginSecurity_upvr = require(Foundation.Utility.isPluginSecurity)
return React_upvr.memo(React_upvr.forwardRef(function(arg1, arg2) -- Line 56, Named "InternalTextInput"
	--[[ Upvalues[13]:
		[1]: withDefaults_upvr (readonly)
		[2]: tbl_2_upvr (readonly)
		[3]: useTokens_upvr (readonly)
		[4]: useTextInputVariants_upvr (readonly)
		[5]: React_upvr (readonly)
		[6]: ControlState_upvr (readonly)
		[7]: Flags_upvr (readonly)
		[8]: useStyleTags_upvr (readonly)
		[9]: useCursor_upvr (readonly)
		[10]: View_upvr (readonly)
		[11]: withCommonProps_upvr (readonly)
		[12]: StateLayerAffordance_upvr (readonly)
		[13]: isPluginSecurity_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 57 start (CF ANALYSIS FAILED)
	local var5_result1_upvr = withDefaults_upvr(arg1, tbl_2_upvr)
	local useTokens_upvr_result1 = useTokens_upvr()
	local useTextInputVariants_upvr_result1 = useTextInputVariants_upvr(useTokens_upvr_result1, var5_result1_upvr.size)
	local any_useRef_result1_upvr = React_upvr.useRef(nil)
	local any_useState_result1, any_useState_result2_upvr_2 = React_upvr.useState(false)
	local _, any_useState_result2_upvr = React_upvr.useState(false)
	local Thick = useTokens_upvr_result1.Stroke.Thick
	local var25 = math.ceil(useTokens_upvr_result1.Stroke.Standard) * 2
	local any_useCallback_result1_upvr_2 = React_upvr.useCallback(function() -- Line 71
		--[[ Upvalues[1]:
			[1]: any_useRef_result1_upvr (readonly)
		]]
		if any_useRef_result1_upvr.current then
			any_useRef_result1_upvr.current:CaptureFocus()
		end
	end, {})
	local any_useCallback_result1_upvr = React_upvr.useCallback(function() -- Line 77
		--[[ Upvalues[1]:
			[1]: any_useRef_result1_upvr (readonly)
		]]
		if any_useRef_result1_upvr.current then
			any_useRef_result1_upvr.current:ReleaseFocus()
		end
	end, {})
	local any_useCallback_result1_upvr_3 = React_upvr.useCallback(function() -- Line 83
		--[[ Upvalues[1]:
			[1]: any_useRef_result1_upvr (readonly)
		]]
		if any_useRef_result1_upvr.current then
			return any_useRef_result1_upvr.current:IsFocused()
		end
		return nil
	end, {})
	React_upvr.useImperativeHandle(arg2, function() -- Line 90
		--[[ Upvalues[4]:
			[1]: any_useCallback_result1_upvr_3 (readonly)
			[2]: any_useCallback_result1_upvr_2 (readonly)
			[3]: any_useCallback_result1_upvr (readonly)
			[4]: any_useState_result2_upvr_2 (readonly)
		]]
		return {
			getIsFocused = any_useCallback_result1_upvr_3;
			focus = any_useCallback_result1_upvr_2;
			releaseFocus = any_useCallback_result1_upvr;
			setHover = any_useState_result2_upvr_2;
		}
	end, {any_useCallback_result1_upvr_3, any_useCallback_result1_upvr_2, any_useCallback_result1_upvr})
	local function _(arg1_2) -- Line 99
		--[[ Upvalues[1]:
			[1]: var5_result1_upvr (readonly)
		]]
		if arg1_2 == nil then
			var5_result1_upvr.onChanged("")
		else
			var5_result1_upvr.onChanged(arg1_2.Text)
		end
	end
	local _ = {var5_result1_upvr.onChanged}
	local function _() -- Line 107
		--[[ Upvalues[2]:
			[1]: var5_result1_upvr (readonly)
			[2]: any_useState_result2_upvr (readonly)
		]]
		if var5_result1_upvr.isDisabled then
		else
			any_useState_result2_upvr(true)
			if var5_result1_upvr.onFocus then
				var5_result1_upvr.onFocus()
			end
		end
	end
	local _ = {var5_result1_upvr.onFocus, var5_result1_upvr.isDisabled}
	local function _(arg1_3, arg2_2, arg3) -- Line 119
		--[[ Upvalues[2]:
			[1]: any_useState_result2_upvr (readonly)
			[2]: var5_result1_upvr (readonly)
		]]
		any_useState_result2_upvr(false)
		if var5_result1_upvr.onFocusLost then
			var5_result1_upvr.onFocusLost()
		end
		if arg2_2 and var5_result1_upvr.onReturnPressed then
			var5_result1_upvr.onReturnPressed()
		end
	end
	local _ = {var5_result1_upvr.onReturnPressed, var5_result1_upvr.onFocusLost}
	local function _(arg1_4) -- Line 132
		--[[ Upvalues[2]:
			[1]: any_useState_result2_upvr_2 (readonly)
			[2]: ControlState_upvr (copied, readonly)
		]]
		local var42
		if arg1_4 ~= ControlState_upvr.Hover then
			var42 = false
		else
			var42 = true
		end
		any_useState_result2_upvr_2(var42)
	end
	if Flags_upvr.FoundationDisableStylingPolyfill then
	else
	end
	local tbl = {}
	if var5_result1_upvr.isDisabled then
		-- KONSTANTWARNING: GOTO [184] #137
	end
	-- KONSTANTERROR: [0] 1. Error Block 57 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [183] 136. Error Block 62 start (CF ANALYSIS FAILED)
	tbl.GroupTransparency = nil
	tbl.tag = useTextInputVariants_upvr_result1.canvas.tag
	;({
		Size = UDim2.new(1, -var25, 1, -var25);
		Position = UDim2.new(0, var25 / 2, 0, var25 / 2);
	}).selection = {
		Selectable = not var5_result1_upvr.isDisabled;
		SelectionImageObject = useCursor_upvr({
			radius = UDim.new(0, useTextInputVariants_upvr_result1.innerContainer.radius);
			offset = Thick;
			borderWidth = Thick;
		});
	}
	if var5_result1_upvr.hasError then
		-- KONSTANTWARNING: GOTO [248] #179
	end
	-- KONSTANTERROR: [183] 136. Error Block 62 end (CF ANALYSIS FAILED)
end))