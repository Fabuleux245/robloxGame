-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:05:47
-- Luau version 6, Types version 3
-- Time taken: 0.001540 seconds

local FocusNavigationUtils = script:FindFirstAncestor("FocusNavigationUtils")
local Parent = FocusNavigationUtils.Parent
local FocusNavigationEventNameEnum = require(FocusNavigationUtils.FocusNavigationEventNameEnum)
local tbl_upvr = {
	[Enum.KeyCode.ButtonB] = FocusNavigationEventNameEnum.NavigateBack;
	[Enum.KeyCode.Escape] = FocusNavigationEventNameEnum.NavigateBack;
	[Enum.KeyCode.ButtonY] = FocusNavigationEventNameEnum.Search;
	[Enum.KeyCode.Slash] = FocusNavigationEventNameEnum.Search;
	[Enum.KeyCode.PageUp] = FocusNavigationEventNameEnum.ScrollUp;
	[Enum.KeyCode.LeftBracket] = FocusNavigationEventNameEnum.ScrollUp;
	[Enum.KeyCode.PageDown] = FocusNavigationEventNameEnum.ScrollDown;
	[Enum.KeyCode.RightBracket] = FocusNavigationEventNameEnum.ScrollDown;
}
local tbl_upvr_2 = {}
local Navigation_upvr = require(Parent.Navigation)
local useDefaultAppEventHandlers_upvr = require(FocusNavigationUtils.useDefaultAppEventHandlers)
local Cryo_upvr = require(Parent.Cryo)
local React_upvr = require(Parent.React)
local FocusRoot_upvr = require(FocusNavigationUtils.FocusRoot)
return function(arg1) -- Line 36, Named "AppFocusRoot"
	--[[ Upvalues[7]:
		[1]: tbl_upvr_2 (readonly)
		[2]: Navigation_upvr (readonly)
		[3]: useDefaultAppEventHandlers_upvr (readonly)
		[4]: Cryo_upvr (readonly)
		[5]: tbl_upvr (readonly)
		[6]: React_upvr (readonly)
		[7]: FocusRoot_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local customEventHandlers = arg1.customEventHandlers
	if not customEventHandlers then
		customEventHandlers = tbl_upvr_2
	end
	local customEventMap = arg1.customEventMap
	if not customEventMap then
		customEventMap = tbl_upvr_2
	end
	local any_useNavigationFocus_result1 = Navigation_upvr.useNavigationFocus()
	if arg1.isFocusable == nil then
	else
	end
	if arg1.isFocusable then
		if any_useNavigationFocus_result1 == nil then
		else
		end
	end
	if arg1.isAutoFocusRoot == nil then
	else
	end
	return React_upvr.createElement(FocusRoot_upvr, Cryo_upvr.Dictionary.union(arg1, {
		customEventHandlers = Cryo_upvr.None;
		eventHandlers = Cryo_upvr.Dictionary.union(useDefaultAppEventHandlers_upvr(), customEventHandlers);
		eventMap = Cryo_upvr.Dictionary.union(tbl_upvr, customEventMap);
		isFocusable = any_useNavigationFocus_result1;
		isAutoFocusRoot = arg1.isAutoFocusRoot;
	}), arg1.children)
end