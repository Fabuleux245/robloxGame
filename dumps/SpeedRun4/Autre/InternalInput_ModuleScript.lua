-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:47:53
-- Luau version 6, Types version 3
-- Time taken: 0.007244 seconds

local Foundation = script:FindFirstAncestor("Foundation")
local Parent = Foundation.Parent
local React_upvr = require(Parent.React)
local Components = Foundation.Components
local tbl_3_upvr = {
	size = require(Foundation.Enums.InputSize).Medium;
}
local withDefaults_upvr = require(Foundation.Utility.withDefaults)
local useTokens_upvr = require(Foundation.Providers.Style.useTokens)
local useInputVariants_upvr = require(script.Parent.useInputVariants)
local useCursor_upvr = require(Foundation.Providers.Cursor.useCursor)
local useInputMotionStates_upvr = require(script.Parent.useInputMotionStates)
local useMotion_upvr = require(Parent.Motion).useMotion
local ControlState_upvr = require(Foundation.Enums.ControlState)
local StateLayerAffordance_upvr = require(Foundation.Enums.StateLayerAffordance)
local View_upvr = require(Components.View)
local withCommonProps_upvr = require(Foundation.Utility.withCommonProps)
local Cryo_upvr = require(Parent.Cryo)
local InputLabel_upvr = require(Components.InputLabel)
local getInputTextSize_upvr = require(Foundation.Utility.getInputTextSize)
return React_upvr.memo(React_upvr.forwardRef(function(arg1, arg2) -- Line 74, Named "InternalInput"
	--[[ Upvalues[15]:
		[1]: withDefaults_upvr (readonly)
		[2]: tbl_3_upvr (readonly)
		[3]: React_upvr (readonly)
		[4]: useTokens_upvr (readonly)
		[5]: useInputVariants_upvr (readonly)
		[6]: useCursor_upvr (readonly)
		[7]: useInputMotionStates_upvr (readonly)
		[8]: useMotion_upvr (readonly)
		[9]: ControlState_upvr (readonly)
		[10]: StateLayerAffordance_upvr (readonly)
		[11]: View_upvr (readonly)
		[12]: withCommonProps_upvr (readonly)
		[13]: Cryo_upvr (readonly)
		[14]: InputLabel_upvr (readonly)
		[15]: getInputTextSize_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local withDefaults_upvr_result1_upvr = withDefaults_upvr(arg1, tbl_3_upvr)
	local text = withDefaults_upvr_result1_upvr.label.text
	local var21_upvr
	if not withDefaults_upvr_result1_upvr.label.position then
		local Right = Enum.HorizontalAlignment.Right
	end
	if typeof(text) == "string" then
		if 0 >= #text then
			var21_upvr = false
		else
			var21_upvr = true
		end
	elseif text == nil then
		var21_upvr = false
	else
		var21_upvr = true
	end
	local any_useState_result1_upvr_2, any_useState_result2_upvr_2 = React_upvr.useState(false)
	local var7_result1_upvr = useTokens_upvr()
	local any_useState_result1_upvr, any_useState_result2_upvr = React_upvr.useState(withDefaults_upvr_result1_upvr.isChecked or false)
	React_upvr.useEffect(function() -- Line 84
		--[[ Upvalues[2]:
			[1]: withDefaults_upvr_result1_upvr (readonly)
			[2]: any_useState_result2_upvr (readonly)
		]]
		if withDefaults_upvr_result1_upvr.isChecked ~= nil then
			any_useState_result2_upvr(withDefaults_upvr_result1_upvr.isChecked)
		end
	end, {withDefaults_upvr_result1_upvr.isChecked})
	local useInputVariants_upvr_result1 = useInputVariants_upvr(var7_result1_upvr, withDefaults_upvr_result1_upvr.size)
	local var10_result1_upvr = useInputMotionStates_upvr(var7_result1_upvr, withDefaults_upvr_result1_upvr.customVariantProps.checkedStyle)
	local useMotion_upvr_result1, useMotion_upvr_result2_upvr = useMotion_upvr(var10_result1_upvr.Default)
	React_upvr.useEffect(function() -- Line 106
		--[[ Upvalues[4]:
			[1]: any_useState_result1_upvr (readonly)
			[2]: useMotion_upvr_result2_upvr (readonly)
			[3]: var10_result1_upvr (readonly)
			[4]: any_useState_result1_upvr_2 (readonly)
		]]
		if any_useState_result1_upvr then
			useMotion_upvr_result2_upvr(var10_result1_upvr.Checked)
		else
			if any_useState_result1_upvr_2 then
				useMotion_upvr_result2_upvr(var10_result1_upvr.Hover)
				return
			end
			useMotion_upvr_result2_upvr(var10_result1_upvr.Default)
		end
	end, {any_useState_result1_upvr, any_useState_result1_upvr_2})
	local any_useCallback_result1 = React_upvr.useCallback(function() -- Line 120
		--[[ Upvalues[3]:
			[1]: withDefaults_upvr_result1_upvr (readonly)
			[2]: any_useState_result2_upvr (readonly)
			[3]: any_useState_result1_upvr (readonly)
		]]
		if withDefaults_upvr_result1_upvr.isDisabled then
		else
			if withDefaults_upvr_result1_upvr.isChecked == nil then
				any_useState_result2_upvr(not any_useState_result1_upvr)
			end
			withDefaults_upvr_result1_upvr.onActivated(not any_useState_result1_upvr)
		end
	end, {withDefaults_upvr_result1_upvr.isDisabled, withDefaults_upvr_result1_upvr.isChecked, withDefaults_upvr_result1_upvr.onActivated, any_useState_result1_upvr})
	local module_2 = {
		Active = not withDefaults_upvr_result1_upvr.isDisabled;
	}
	if withDefaults_upvr_result1_upvr.isDisabled then
	else
	end
	module_2.GroupTransparency = 0
	module_2.onActivated = any_useCallback_result1
	module_2.onStateChanged = React_upvr.useCallback(function(arg1_2) -- Line 116
		--[[ Upvalues[2]:
			[1]: any_useState_result2_upvr_2 (readonly)
			[2]: ControlState_upvr (copied, readonly)
		]]
		local var41
		if arg1_2 ~= ControlState_upvr.Hover then
			var41 = false
		else
			var41 = true
		end
		any_useState_result2_upvr_2(var41)
	end, {})
	module_2.stateLayer = {
		affordance = StateLayerAffordance_upvr.None;
	}
	module_2.selection = {
		Selectable = not withDefaults_upvr_result1_upvr.isDisabled;
		SelectionImageObject = useCursor_upvr(React_upvr.useMemo(function() -- Line 91
			--[[ Upvalues[3]:
				[1]: var21_upvr (readonly)
				[2]: var7_result1_upvr (readonly)
				[3]: withDefaults_upvr_result1_upvr (readonly)
			]]
			local var32
			if var21_upvr then
				var32 = UDim.new(0, var7_result1_upvr.Radius.Small)
			else
				var32 = withDefaults_upvr_result1_upvr.customVariantProps.cursorRadius
				if not var32 then
					var32 = UDim.new(0, 0)
				end
			end
			return {
				radius = var32;
				offset = var7_result1_upvr.Size.Size_200;
				borderWidth = var7_result1_upvr.Stroke.Thicker;
			}
		end, {var7_result1_upvr, var21_upvr}));
	}
	module_2.isDisabled = withDefaults_upvr_result1_upvr.isDisabled
	module_2.ref = arg2
	local thickness = useInputVariants_upvr_result1.input.stroke.thickness
	local tbl_2 = {
		tag = withDefaults_upvr_result1_upvr.customVariantProps.tag;
		Size = withDefaults_upvr_result1_upvr.customVariantProps.size - UDim2.fromOffset(thickness, thickness);
		backgroundStyle = useMotion_upvr_result1.backgroundStyle;
		onActivated = any_useCallback_result1;
		stateLayer = {
			affordance = StateLayerAffordance_upvr.Background;
		};
		stroke = {
			Color = useMotion_upvr_result1.strokeStyle:map(function(arg1_3) -- Line 154
				return arg1_3.Color3
			end);
			Transparency = useMotion_upvr_result1.strokeStyle:map(function(arg1_4) -- Line 157
				--[[ Upvalues[2]:
					[1]: withDefaults_upvr_result1_upvr (readonly)
					[2]: var21_upvr (readonly)
				]]
				if withDefaults_upvr_result1_upvr.isDisabled and not var21_upvr then
					return 0.5
				end
				return arg1_4.Transparency
			end);
			Thickness = thickness;
		};
	}
	if var21_upvr then
		if Right == Enum.HorizontalAlignment.Left then
		else
		end
	else
	end
	tbl_2.LayoutOrder = nil
	if not var21_upvr then
		return React_upvr.createElement(View_upvr, withCommonProps_upvr(withDefaults_upvr_result1_upvr, Cryo_upvr.Dictionary.union(module_2, tbl_2)), withDefaults_upvr_result1_upvr.children)
	end
	local module = {
		tag = useInputVariants_upvr_result1.container.tag;
	}
	local tbl = {
		top = useInputVariants_upvr_result1.container.padding;
	}
	local padding = useInputVariants_upvr_result1.container.padding
	tbl.bottom = padding
	if Right == Enum.HorizontalAlignment.Right then
		padding = useInputVariants_upvr_result1.container.padding
	else
		padding = nil
	end
	tbl.left = padding
	if Right == Enum.HorizontalAlignment.Left then
		-- KONSTANTWARNING: GOTO [325] #224
	end
	tbl.right = nil
	module.padding = tbl
	local module_3 = {
		Input = React_upvr.createElement(View_upvr, tbl_2, withDefaults_upvr_result1_upvr.children);
	}
	if typeof(text) == "string" then
		local tbl_4 = {
			Text = text;
			textStyle = useMotion_upvr_result1.labelStyle;
			size = getInputTextSize_upvr(withDefaults_upvr_result1_upvr.size, true);
		}
	else
	end
	module_3.InputLabel = text
	return React_upvr.createElement(View_upvr, withCommonProps_upvr(withDefaults_upvr_result1_upvr, Cryo_upvr.Dictionary.union(module, module_2)), module_3)
end))