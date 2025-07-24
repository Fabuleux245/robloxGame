-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:32:00
-- Luau version 6, Types version 3
-- Time taken: 0.001178 seconds

local Parent = script:FindFirstAncestor("GameCollections").Parent
local React_upvr = require(Parent.React)
local FocusNavigationEventNameEnum_upvr = require(Parent.FocusNavigationUtils).FocusNavigationEventNameEnum
local module_upvr = {
	[Enum.KeyCode.ButtonX] = FocusNavigationEventNameEnum_upvr.SeeAll;
	[Enum.KeyCode.ButtonA] = FocusNavigationEventNameEnum_upvr.HoldToPlay;
}
local module = {}
local InputHandlers_upvr = require(Parent.InputHandlers)
local ReactFocusNavigation_upvr = require(Parent.ReactFocusNavigation)
local function useControllerBarFocusNavigationBindings_upvr(arg1, arg2) -- Line 23, Named "useControllerBarFocusNavigationBindings"
	--[[ Upvalues[5]:
		[1]: React_upvr (readonly)
		[2]: FocusNavigationEventNameEnum_upvr (readonly)
		[3]: InputHandlers_upvr (readonly)
		[4]: ReactFocusNavigation_upvr (readonly)
		[5]: module_upvr (readonly)
	]]
	local module_2 = {}
	module_2[1] = arg1
	module_2[2] = arg2
	return ReactFocusNavigation_upvr.useEventHandlerMap(React_upvr.useMemo(function() -- Line 24
		--[[ Upvalues[4]:
			[1]: FocusNavigationEventNameEnum_upvr (copied, readonly)
			[2]: arg1 (readonly)
			[3]: InputHandlers_upvr (copied, readonly)
			[4]: arg2 (readonly)
		]]
		local module_3 = {}
		local var10 = FocusNavigationEventNameEnum_upvr
		if arg1 then
			var10 = {}
			var10.handler = InputHandlers_upvr.onRelease(arg1)
		else
			var10 = nil
		end
		module_3[var10.SeeAll] = var10
		var10 = FocusNavigationEventNameEnum_upvr
		if arg2 then
			var10 = {}
			var10.handler = arg2
		else
			var10 = nil
		end
		module_3[var10.HoldToPlay] = var10
		return module_3
	end, module_2), ReactFocusNavigation_upvr.useEventMap(module_upvr))
end
module.useControllerBarFocusNavigationBindings = useControllerBarFocusNavigationBindings_upvr
function module.OnSeeAllControllerBarNavigateWrapper(arg1) -- Line 45
	--[[ Upvalues[2]:
		[1]: useControllerBarFocusNavigationBindings_upvr (readonly)
		[2]: React_upvr (readonly)
	]]
	return React_upvr.createElement("Frame", {
		ref = useControllerBarFocusNavigationBindings_upvr(arg1.onSeeAll);
		Size = UDim2.new(1, 0, 0, 0);
		AutomaticSize = Enum.AutomaticSize.Y;
		BackgroundTransparency = 1;
	}, arg1.children)
end
return module