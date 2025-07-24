-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:48:14
-- Luau version 6, Types version 3
-- Time taken: 0.001101 seconds

local Foundation = script:FindFirstAncestor("Foundation")
local React_upvr = require(Foundation.Parent.React)
local View_upvr = require(Foundation.Components.View)
local withCommonProps_upvr = require(Foundation.Utility.withCommonProps)
local CheckedValueContext_upvr = require(script.Parent.CheckedValueContext)
return React_upvr.memo(React_upvr.forwardRef(function(arg1, arg2) -- Line 20, Named "RadioGroup"
	--[[ Upvalues[4]:
		[1]: React_upvr (readonly)
		[2]: View_upvr (readonly)
		[3]: withCommonProps_upvr (readonly)
		[4]: CheckedValueContext_upvr (readonly)
	]]
	local any_useState_result1, any_useState_result2_upvr = React_upvr.useState(arg1.value)
	React_upvr.useEffect(function() -- Line 23
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: any_useState_result2_upvr (readonly)
		]]
		if arg1.value ~= nil then
			any_useState_result2_upvr(arg1.value)
		end
	end, {arg1.value})
	local module = {
		tag = "auto-xy col gap-large";
	}
	module.ref = arg2
	return React_upvr.createElement(View_upvr, withCommonProps_upvr(arg1, module), {
		CheckedValueContext = React_upvr.createElement(CheckedValueContext_upvr.Provider, {
			value = {
				value = any_useState_result1;
				onValueChanged = React_upvr.useCallback(function(arg1_2) -- Line 29
					--[[ Upvalues[2]:
						[1]: any_useState_result2_upvr (readonly)
						[2]: arg1 (readonly)
					]]
					any_useState_result2_upvr(arg1_2)
					arg1.onValueChanged(arg1_2)
				end, {any_useState_result2_upvr, arg1.onValueChanged});
			};
		}, arg1.children);
	})
end))