-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:47:48
-- Luau version 6, Types version 3
-- Time taken: 0.003087 seconds

local Foundation = script:FindFirstAncestor("Foundation")
local React_upvr = require(Foundation.Parent.React)
local Components = Foundation.Components
local tbl_upvr = {
	width = UDim.new(0, 400);
	size = require(Foundation.Enums.InputLabelSize).Small;
}
local withDefaults_upvr = require(Foundation.Utility.withDefaults)
local View_upvr = require(Components.View)
local withCommonProps_upvr = require(Foundation.Utility.withCommonProps)
local InputLabel_upvr = require(Components.InputLabel)
local HintText_upvr = require(Components.HintText)
return React_upvr.memo(React_upvr.forwardRef(function(arg1, arg2) -- Line 42, Named "InputField"
	--[[ Upvalues[7]:
		[1]: withDefaults_upvr (readonly)
		[2]: tbl_upvr (readonly)
		[3]: React_upvr (readonly)
		[4]: View_upvr (readonly)
		[5]: withCommonProps_upvr (readonly)
		[6]: InputLabel_upvr (readonly)
		[7]: HintText_upvr (readonly)
	]]
	local var5_result1 = withDefaults_upvr(arg1, tbl_upvr)
	local any_useRef_result1_upvr = React_upvr.useRef(nil)
	React_upvr.useImperativeHandle(var5_result1.textBoxRef, function() -- Line 58
		--[[ Upvalues[1]:
			[1]: any_useRef_result1_upvr (readonly)
		]]
		if not any_useRef_result1_upvr.current then
			return nil
		end
		return {
			focus = any_useRef_result1_upvr.current.focus;
			releaseFocus = any_useRef_result1_upvr.current.releaseFocus;
			getIsFocused = any_useRef_result1_upvr.current.getIsFocused;
		}
	end, {})
	local module = {
		Size = UDim2.new(var5_result1.width, UDim.new(0, 0));
		tag = "col gap-xsmall auto-y";
	}
	module.ref = arg2
	local module_2 = {}
	if 0 < #var5_result1.label then
		module = React_upvr.createElement
		module = module(InputLabel_upvr, {
			Text = var5_result1.label;
			size = var5_result1.size;
			isRequired = var5_result1.isRequired;
			onActivated = React_upvr.useCallback(function() -- Line 46
				--[[ Upvalues[1]:
					[1]: any_useRef_result1_upvr (readonly)
				]]
				if any_useRef_result1_upvr.current and not any_useRef_result1_upvr.current.getIsFocused() then
					any_useRef_result1_upvr.current.focus()
				end
			end, {});
			onHover = React_upvr.useCallback(function(arg1_2) -- Line 52
				--[[ Upvalues[1]:
					[1]: any_useRef_result1_upvr (readonly)
				]]
				if any_useRef_result1_upvr.current then
					any_useRef_result1_upvr.current.setHover(arg1_2)
				end
			end, {});
			LayoutOrder = 1;
		})
	else
		module = nil
	end
	module_2.Label = module
	module = React_upvr.createElement
	module = module(View_upvr, {
		tag = "size-full-0 auto-y";
		LayoutOrder = 2;
	}, {
		Input = var5_result1.input(any_useRef_result1_upvr);
	})
	module_2.InputWrapper = module
	if var5_result1.hint then
		module = React_upvr.createElement
		module = module(HintText_upvr, {
			text = var5_result1.hint;
			hasError = var5_result1.hasError;
			LayoutOrder = 3;
		})
	else
		module = nil
	end
	module_2.Hint = module
	return React_upvr.createElement(View_upvr, withCommonProps_upvr(var5_result1, module), module_2)
end))