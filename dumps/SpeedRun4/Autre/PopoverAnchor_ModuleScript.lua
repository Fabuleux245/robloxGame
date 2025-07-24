-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:48:08
-- Luau version 6, Types version 3
-- Time taken: 0.000941 seconds

local Foundation = script:FindFirstAncestor("Foundation")
local React_upvr = require(Foundation.Parent.React)
local PopoverContext_upvr = require(script.Parent.Parent.PopoverContext)
local View_upvr = require(Foundation.Components.View)
local withCommonProps_upvr = require(Foundation.Utility.withCommonProps)
return React_upvr.forwardRef(function(arg1, arg2) -- Line 17, Named "PopoverAnchor"
	--[[ Upvalues[4]:
		[1]: React_upvr (readonly)
		[2]: PopoverContext_upvr (readonly)
		[3]: View_upvr (readonly)
		[4]: withCommonProps_upvr (readonly)
	]]
	local any_useRef_result1_upvr = React_upvr.useRef(nil)
	React_upvr.useImperativeHandle(arg2, function() -- Line 22
		--[[ Upvalues[1]:
			[1]: any_useRef_result1_upvr (readonly)
		]]
		return any_useRef_result1_upvr.current
	end, {})
	local any_useContext_result1_upvr = React_upvr.useContext(PopoverContext_upvr)
	React_upvr.useLayoutEffect(function() -- Line 26
		--[[ Upvalues[3]:
			[1]: arg1 (readonly)
			[2]: any_useContext_result1_upvr (readonly)
			[3]: any_useRef_result1_upvr (readonly)
		]]
		if typeof(arg1.anchorRef) == "table" and arg1.anchorRef.current then
			any_useContext_result1_upvr.setAnchor(arg1.anchorRef.current)
		else
			any_useContext_result1_upvr.setAnchor(any_useRef_result1_upvr.current)
		end
	end)
	if arg1.anchorRef then
		return nil
	end
	return React_upvr.createElement(View_upvr, withCommonProps_upvr(arg1, {
		tag = "auto-xy";
		ref = any_useRef_result1_upvr;
	}), arg1.children)
end)