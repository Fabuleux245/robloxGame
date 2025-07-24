-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:58:43
-- Luau version 6, Types version 3
-- Time taken: 0.001441 seconds

local React_upvr = require(script.Parent.Parent.React)
local FocusNavigationContext_upvr = require(script.Parent.FocusNavigationContext)
local useEventLifecycleRef_upvr = require(script.Parent.useEventLifecycleRef)
local useComposedRef_upvr = require(script.Parent.useComposedRef)
return function(arg1, arg2) -- Line 12, Named "useEventMap"
	--[[ Upvalues[4]:
		[1]: React_upvr (readonly)
		[2]: FocusNavigationContext_upvr (readonly)
		[3]: useEventLifecycleRef_upvr (readonly)
		[4]: useComposedRef_upvr (readonly)
	]]
	local any_useContext_result1_upvr = React_upvr.useContext(FocusNavigationContext_upvr)
	local module = {any_useContext_result1_upvr}
	module[2] = arg1
	local module_2 = {any_useContext_result1_upvr}
	module_2[2] = arg1
	return useComposedRef_upvr(useEventLifecycleRef_upvr(React_upvr.useCallback(function(arg1_2) -- Line 15
		--[[ Upvalues[2]:
			[1]: any_useContext_result1_upvr (readonly)
			[2]: arg1 (readonly)
		]]
		if any_useContext_result1_upvr then
			assert(arg1_2:IsA("GuiObject"), "EventMaps can only be mapped to GuiObjects")
			any_useContext_result1_upvr:registerEventMap(arg1_2, arg1)
		end
	end, module), React_upvr.useCallback(function(arg1_3) -- Line 22
		--[[ Upvalues[2]:
			[1]: any_useContext_result1_upvr (readonly)
			[2]: arg1 (readonly)
		]]
		if any_useContext_result1_upvr then
			assert(arg1_3:IsA("GuiObject"), "EventMaps can only be mapped to GuiObjects")
			any_useContext_result1_upvr:deregisterEventMap(arg1_3, arg1)
		end
	end, module_2)), arg2)
end