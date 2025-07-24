-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:05:51
-- Luau version 6, Types version 3
-- Time taken: 0.012751 seconds

local FocusNavigationUtils = script:FindFirstAncestor("FocusNavigationUtils")
local Parent = FocusNavigationUtils.Parent
local React_upvr = require(Parent.React)
local Cryo_upvr = require(Parent.Cryo)
local module_3_upvr = {
	Size = UDim2.fromScale(1, 1);
	BackgroundTransparency = 1;
	SelectionGroup = true;
}
local tbl_12_upvr = {}
local tbl_15_upvr = {
	SelectionBehaviorRight = Enum.SelectionBehavior.Stop;
	SelectionBehaviorLeft = Enum.SelectionBehavior.Stop;
	SelectionBehaviorDown = Enum.SelectionBehavior.Stop;
	SelectionBehaviorUp = Enum.SelectionBehavior.Stop;
}
local function _(arg1, arg2, arg3) -- Line 49, Named "useWrappedFrameProps"
	--[[ Upvalues[5]:
		[1]: React_upvr (readonly)
		[2]: tbl_12_upvr (readonly)
		[3]: Cryo_upvr (readonly)
		[4]: tbl_15_upvr (readonly)
		[5]: module_3_upvr (readonly)
	]]
	local module_4 = {}
	module_4[1] = arg1
	module_4[2] = arg2
	module_4[3] = arg3
	return React_upvr.useMemo(function() -- Line 51
		--[[ Upvalues[7]:
			[1]: arg2 (readonly)
			[2]: tbl_12_upvr (copied, readonly)
			[3]: arg1 (readonly)
			[4]: Cryo_upvr (copied, readonly)
			[5]: tbl_15_upvr (copied, readonly)
			[6]: module_3_upvr (copied, readonly)
			[7]: arg3 (readonly)
		]]
		local var9
		if not var9 then
			var9 = tbl_12_upvr
		end
		if arg1 then
			var9 = Cryo_upvr.Dictionary.join(tbl_15_upvr, var9)
		end
		local module = {}
		module.ref = arg3
		return Cryo_upvr.Dictionary.join(module_3_upvr, var9, module)
	end, module_4)
end
local ReactFocusNavigation_upvr = require(Parent.ReactFocusNavigation)
local useFocusNavigableSurfaceRegistryConnection_upvr = require(FocusNavigationUtils.useFocusNavigableSurfaceRegistryConnection)
local useDescendantHasFocus_upvr = require(FocusNavigationUtils.useDescendantHasFocus)
local useAutoFocus_upvr = require(FocusNavigationUtils.useAutoFocus)
local useLastInputMode_upvr = require(FocusNavigationUtils.useLastInputMode)
return function(arg1) -- Line 80, Named "FocusRoot"
	--[[ Upvalues[10]:
		[1]: React_upvr (readonly)
		[2]: tbl_12_upvr (readonly)
		[3]: ReactFocusNavigation_upvr (readonly)
		[4]: useFocusNavigableSurfaceRegistryConnection_upvr (readonly)
		[5]: useDescendantHasFocus_upvr (readonly)
		[6]: useAutoFocus_upvr (readonly)
		[7]: useLastInputMode_upvr (readonly)
		[8]: Cryo_upvr (readonly)
		[9]: tbl_15_upvr (readonly)
		[10]: module_3_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var101
	if arg1.frameProps and arg1.frameProps.ref then
		var101 = arg1.frameProps.ref.current
	else
		var101 = nil
	end
	local any_useRef_result1_4 = React_upvr.useRef(var101)
	var101 = arg1.eventMap
	if not var101 then
		var101 = tbl_12_upvr
	end
	local eventHandlers_2 = arg1.eventHandlers
	if not eventHandlers_2 then
		eventHandlers_2 = tbl_12_upvr
	end
	local var104 = eventHandlers_2
	local any_useEventHandlerMap_result1_upvr_3 = ReactFocusNavigation_upvr.useEventHandlerMap(var104, ReactFocusNavigation_upvr.useEventMap(var101, any_useRef_result1_4))
	if arg1.isFocusable == nil then
		var104 = true
	else
		var104 = arg1.isFocusable
	end
	if arg1.shouldRestoreFocus == nil then
		-- KONSTANTWARNING: GOTO [56] #40
	end
	if arg1.shouldRestoreFocus then
		local _ = ReactFocusNavigation_upvr.useMostRecentFocusBehavior(any_useEventHandlerMap_result1_upvr_3)
	else
	end
	if any_useRef_result1_4 then
	end
	useFocusNavigableSurfaceRegistryConnection_upvr(any_useRef_result1_4.current, arg1.surfaceIdentifier, var104)
	if any_useRef_result1_4 then
	end
	local tbl_2 = {}
	local var108 = any_useRef_result1_4
	if var108 then
		var108 = any_useRef_result1_4.current
	end
	tbl_2[1] = var108
	local var15_result1_upvr_4 = useAutoFocus_upvr(tbl_2, 0.1)
	if useLastInputMode_upvr() ~= "Focus" then
	else
	end
	if arg1.isAutoFocusRoot then
		if var104 then
			if true then
				if any_useRef_result1_4 then
					if any_useRef_result1_4.current then
						local var110_upvr = not useDescendantHasFocus_upvr(any_useRef_result1_4.current)
					end
				end
			end
		end
	end
	React_upvr.useEffect(function() -- Line 107
		--[[ Upvalues[2]:
			[1]: var110_upvr (readonly)
			[2]: var15_result1_upvr_4 (readonly)
		]]
		local var112_upvw
		if var110_upvr then
			var112_upvw = var15_result1_upvr_4()
		end
		return function() -- Line 112
			--[[ Upvalues[1]:
				[1]: var112_upvw (read and write)
			]]
			if var112_upvw then
				var112_upvw.cancel()
			end
		end
	end, {var110_upvr, var15_result1_upvr_4})
	local isIsolated_upvr = arg1.isIsolated
	local frameProps_upvr_3 = arg1.frameProps
	frameProps_upvr_3 = React_upvr
	isIsolated_upvr = frameProps_upvr_3.createElement
	frameProps_upvr_3 = "Frame"
	isIsolated_upvr = isIsolated_upvr(frameProps_upvr_3, React_upvr.useMemo(function() -- Line 51
		--[[ Upvalues[7]:
			[1]: frameProps_upvr_3 (readonly)
			[2]: tbl_12_upvr (copied, readonly)
			[3]: isIsolated_upvr (readonly)
			[4]: Cryo_upvr (copied, readonly)
			[5]: tbl_15_upvr (copied, readonly)
			[6]: module_3_upvr (copied, readonly)
			[7]: any_useEventHandlerMap_result1_upvr_3 (readonly)
		]]
		local var118
		if not var118 then
			var118 = tbl_12_upvr
		end
		if isIsolated_upvr then
			var118 = Cryo_upvr.Dictionary.join(tbl_15_upvr, var118)
		end
		return Cryo_upvr.Dictionary.join(module_3_upvr, var118, {
			ref = any_useEventHandlerMap_result1_upvr_3;
		})
	end, {isIsolated_upvr, frameProps_upvr_3, any_useEventHandlerMap_result1_upvr_3}), arg1.children)
	return isIsolated_upvr
end