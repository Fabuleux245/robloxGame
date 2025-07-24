-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:05:49
-- Luau version 6, Types version 3
-- Time taken: 0.002860 seconds

local FocusNavigationUtils = script:FindFirstAncestor("FocusNavigationUtils")
local Parent = FocusNavigationUtils.Parent
if require(Parent.SharedFlags).FFlagAppFocusWrapperRefactor then
	return require(FocusNavigationUtils.AppFocusRoot)
end
local React_upvr = require(Parent.React)
local Cryo_upvr = require(Parent.Cryo)
local module_upvr = {
	Size = UDim2.fromScale(1, 1);
	BackgroundTransparency = 1;
	SelectionGroup = true;
}
local tbl_upvr_2 = {
	SelectionBehaviorRight = Enum.SelectionBehavior.Stop;
	SelectionBehaviorLeft = Enum.SelectionBehavior.Stop;
	SelectionBehaviorDown = Enum.SelectionBehavior.Stop;
	SelectionBehaviorUp = Enum.SelectionBehavior.Stop;
}
local function _(arg1, arg2, arg3) -- Line 48, Named "useWrappedFrameProps"
	--[[ Upvalues[4]:
		[1]: React_upvr (readonly)
		[2]: Cryo_upvr (readonly)
		[3]: tbl_upvr_2 (readonly)
		[4]: module_upvr (readonly)
	]]
	local module_2 = {}
	module_2[1] = arg1
	module_2[2] = arg2
	module_2[3] = arg3
	return React_upvr.useMemo(function() -- Line 50
		--[[ Upvalues[6]:
			[1]: arg2 (readonly)
			[2]: arg1 (readonly)
			[3]: Cryo_upvr (copied, readonly)
			[4]: tbl_upvr_2 (copied, readonly)
			[5]: module_upvr (copied, readonly)
			[6]: arg3 (readonly)
		]]
		local var8
		if not var8 then
			var8 = {}
		end
		if arg1 then
			var8 = Cryo_upvr.Dictionary.join(tbl_upvr_2, var8)
		end
		local module = {}
		module.ref = arg3
		return Cryo_upvr.Dictionary.join(module_upvr, var8, module)
	end, module_2)
end
local tbl_upvr = {}
local ReactFocusNavigation_upvr = require(Parent.ReactFocusNavigation)
local useDefaultFocusNavigationBindings_upvr = require(FocusNavigationUtils.useDefaultFocusNavigationBindings)
local Navigation_upvr = require(Parent.Navigation)
local useFocusNavigableSurfaceRegistryConnection_upvr = require(FocusNavigationUtils.useFocusNavigableSurfaceRegistryConnection)
return function(arg1) -- Line 72, Named "FocusNavigableSurfaceWrapper"
	--[[ Upvalues[9]:
		[1]: tbl_upvr (readonly)
		[2]: React_upvr (readonly)
		[3]: ReactFocusNavigation_upvr (readonly)
		[4]: useDefaultFocusNavigationBindings_upvr (readonly)
		[5]: Navigation_upvr (readonly)
		[6]: useFocusNavigableSurfaceRegistryConnection_upvr (readonly)
		[7]: Cryo_upvr (readonly)
		[8]: tbl_upvr_2 (readonly)
		[9]: module_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var16
	if not var16 then
		var16 = tbl_upvr
	end
	local var17
	if arg1.frameProps and arg1.frameProps.ref then
		var17 = arg1.frameProps.ref.current
	else
		var17 = nil
	end
	local any_useRef_result1 = React_upvr.useRef(var17)
	var17 = ReactFocusNavigation_upvr.useEventHandlerMap(var16, any_useRef_result1)
	var17 = useDefaultFocusNavigationBindings_upvr(var17)
	local isFocusable = arg1.isFocusable
	local any_useNavigationFocus_result1 = Navigation_upvr.useNavigationFocus()
	if isFocusable == nil then
	else
	end
	if isFocusable then
		if any_useNavigationFocus_result1 == nil then
		else
		end
	end
	if arg1.shouldRestoreFocus ~= nil then
	else
	end
	if true then
	end
	local var21 = any_useRef_result1
	if var21 then
		var21 = any_useRef_result1.current
	end
	useFocusNavigableSurfaceRegistryConnection_upvr(var21, arg1.surfaceIdentifier, any_useNavigationFocus_result1)
	local isIsolated_upvr = arg1.isIsolated
	local frameProps_upvr = arg1.frameProps
	local any_useMostRecentFocusBehavior_result1_upvr = ReactFocusNavigation_upvr.useMostRecentFocusBehavior(var17)
	frameProps_upvr = React_upvr
	isIsolated_upvr = frameProps_upvr.createElement
	frameProps_upvr = "Frame"
	any_useMostRecentFocusBehavior_result1_upvr = React_upvr.useMemo(function() -- Line 50
		--[[ Upvalues[6]:
			[1]: frameProps_upvr (readonly)
			[2]: isIsolated_upvr (readonly)
			[3]: Cryo_upvr (copied, readonly)
			[4]: tbl_upvr_2 (copied, readonly)
			[5]: module_upvr (copied, readonly)
			[6]: any_useMostRecentFocusBehavior_result1_upvr (readonly)
		]]
		local var26
		if not var26 then
			var26 = {}
		end
		if isIsolated_upvr then
			var26 = Cryo_upvr.Dictionary.join(tbl_upvr_2, var26)
		end
		return Cryo_upvr.Dictionary.join(module_upvr, var26, {
			ref = any_useMostRecentFocusBehavior_result1_upvr;
		})
	end, {isIsolated_upvr, frameProps_upvr, any_useMostRecentFocusBehavior_result1_upvr})
	isIsolated_upvr = isIsolated_upvr(frameProps_upvr, any_useMostRecentFocusBehavior_result1_upvr, arg1.children)
	return isIsolated_upvr
end