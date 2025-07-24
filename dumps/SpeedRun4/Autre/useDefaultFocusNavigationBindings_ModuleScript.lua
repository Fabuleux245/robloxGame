-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:05:54
-- Luau version 6, Types version 3
-- Time taken: 0.001683 seconds

local FocusNavigationUtils = script:FindFirstAncestor("FocusNavigationUtils")
local Parent = FocusNavigationUtils.Parent
local FocusNavigationEventNameEnum_upvr = require(FocusNavigationUtils.FocusNavigationEventNameEnum)
local tbl_upvr = {
	[Enum.KeyCode.ButtonB] = FocusNavigationEventNameEnum_upvr.NavigateBack;
	[Enum.KeyCode.Escape] = FocusNavigationEventNameEnum_upvr.NavigateBack;
	[Enum.KeyCode.ButtonY] = FocusNavigationEventNameEnum_upvr.Search;
	[Enum.KeyCode.Slash] = FocusNavigationEventNameEnum_upvr.Search;
	[Enum.KeyCode.PageUp] = FocusNavigationEventNameEnum_upvr.ScrollUp;
	[Enum.KeyCode.LeftBracket] = FocusNavigationEventNameEnum_upvr.ScrollUp;
	[Enum.KeyCode.PageDown] = FocusNavigationEventNameEnum_upvr.ScrollDown;
	[Enum.KeyCode.RightBracket] = FocusNavigationEventNameEnum_upvr.ScrollDown;
}
local function _(arg1) -- Line 38, Named "getScrollableAncestor"
	if arg1 == nil then
		return nil
	end
	if arg1:IsA("ScrollingFrame") then
		return arg1
	end
	return arg1:FindFirstAncestorWhichIsA("ScrollingFrame")
end
local function scrollTo_upvr(arg1, arg2) -- Line 49, Named "scrollTo"
	if arg1 ~= nil then
		local var5 = arg1.AbsoluteCanvasSize.Y - arg1.AbsoluteWindowSize.Y
		if 0 < arg2 and var5 - 350 <= arg1.CanvasPosition.Y then
			arg1.CanvasPosition = Vector2.new(0, var5)
			return
		end
		if arg2 < 0 and arg1.CanvasPosition.Y <= 350 then
			arg1.CanvasPosition = Vector2.new(0, 0)
			return
		end
		arg1.CanvasPosition += Vector2.new(0, arg2)
	end
end
local useNavigation_upvr = require(Parent.Navigation).useNavigation
local useRegistryEntry_upvr = require(FocusNavigationUtils.FocusNavigableSurfaceRegistry).useRegistryEntry
local FocusNavigableSurfaceIdentifierEnum_upvr = require(FocusNavigationUtils.FocusNavigableSurfaceIdentifierEnum)
local useFocusRegistryEntry_upvr = require(FocusNavigationUtils.FocusNavigableSurfaceRegistry).useFocusRegistryEntry
local useDescendantHasFocus_upvr = require(FocusNavigationUtils.useDescendantHasFocus)
local useSelector_upvr = require(Parent.RoactUtils).Hooks.RoactRodux.useSelector
local ReactFocusNavigation_upvr = require(Parent.ReactFocusNavigation)
local React_upvr = require(Parent.React)
local InputHandlers_upvr = require(Parent.InputHandlers)
local canGoBack_upvr = require(Parent.Navigation).canGoBack
function useDefaultFocusNavigationBindings(arg1) -- Line 68
	--[[ Upvalues[13]:
		[1]: useNavigation_upvr (readonly)
		[2]: useRegistryEntry_upvr (readonly)
		[3]: FocusNavigableSurfaceIdentifierEnum_upvr (readonly)
		[4]: useFocusRegistryEntry_upvr (readonly)
		[5]: useDescendantHasFocus_upvr (readonly)
		[6]: useSelector_upvr (readonly)
		[7]: ReactFocusNavigation_upvr (readonly)
		[8]: tbl_upvr (readonly)
		[9]: React_upvr (readonly)
		[10]: FocusNavigationEventNameEnum_upvr (readonly)
		[11]: InputHandlers_upvr (readonly)
		[12]: canGoBack_upvr (readonly)
		[13]: scrollTo_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 18 start (CF ANALYSIS FAILED)
	local function _(arg1_2) -- Line 75
		return arg1_2.TabBarVisible
	end
	local any_useFocusedGuiObject_result1 = ReactFocusNavigation_upvr.useFocusedGuiObject()
	if any_useFocusedGuiObject_result1 == nil then
		-- KONSTANTWARNING: GOTO [48] #41
	end
	-- KONSTANTERROR: [0] 1. Error Block 18 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [36] 31. Error Block 16 start (CF ANALYSIS FAILED)
	if any_useFocusedGuiObject_result1:IsA("ScrollingFrame") then
		-- KONSTANTWARNING: GOTO [48] #41
	end
	-- KONSTANTERROR: [36] 31. Error Block 16 end (CF ANALYSIS FAILED)
end
return useDefaultFocusNavigationBindings