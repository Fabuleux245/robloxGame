-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:58:44
-- Luau version 6, Types version 3
-- Time taken: 0.000707 seconds

local Parent = script.Parent.Parent
local React_upvr = require(Parent.React)
local FocusNavigationContext_upvr = require(script.Parent.FocusNavigationContext)
local mockableWarn_upvr = require(Parent.FocusNavigationUtils).mockableWarn
return function() -- Line 10, Named "useFocusGuiObject"
	--[[ Upvalues[3]:
		[1]: React_upvr (readonly)
		[2]: FocusNavigationContext_upvr (readonly)
		[3]: mockableWarn_upvr (readonly)
	]]
	local any_useContext_result1_upvr = React_upvr.useContext(FocusNavigationContext_upvr)
	return React_upvr.useCallback(function(arg1, arg2) -- Line 13
		--[[ Upvalues[2]:
			[1]: any_useContext_result1_upvr (readonly)
			[2]: mockableWarn_upvr (copied, readonly)
		]]
		if any_useContext_result1_upvr then
			any_useContext_result1_upvr:focusGuiObject(arg1, not not arg2)
		elseif _G.__DEV__ then
			mockableWarn_upvr("Could not capture focus with no FocusNavigationService.\n\n".."Introduce a ReactFocusNavigation.FocusNavigationProvider ".."above this component in the tree and provide it with a ".."value returned from FocusNavigationService.new(...)")
		end
	end, {any_useContext_result1_upvr})
end