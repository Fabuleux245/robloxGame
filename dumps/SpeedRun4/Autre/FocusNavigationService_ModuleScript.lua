-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:46:58
-- Luau version 6, Types version 3
-- Time taken: 0.007225 seconds

local Parent = script.Parent.Parent
local FocusNavigationUtils = require(Parent.FocusNavigationUtils)
local mockableWarn_upvr = FocusNavigationUtils.mockableWarn
local module_upvr = {}
module_upvr.__index = module_upvr
local createSignal_upvr = FocusNavigationUtils.createSignal
local EventPropagation_upvr = require(Parent.EventPropagation)
function module_upvr.new(arg1) -- Line 84
	--[[ Upvalues[3]:
		[1]: createSignal_upvr (readonly)
		[2]: EventPropagation_upvr (readonly)
		[3]: module_upvr (readonly)
	]]
	local createSignal_upvr_result1_2, createSignal_upvr_result2 = createSignal_upvr({})
	local createSignal_upvr_result1, var5_result2 = createSignal_upvr(arg1.getSelection())
	local tbl_5 = {
		_eventPropagationService = EventPropagation_upvr.new();
	}
	tbl_5._engineInterface = arg1
	tbl_5._eventMapByInstance = setmetatable({}, {
		__mode = 'k';
	})
	tbl_5._focusBehaviorByInstance = setmetatable({}, {
		__mode = 'k';
	})
	tbl_5._engineEventConnections = {}
	tbl_5._silentFocusTarget = nil
	tbl_5._silentBlurTarget = nil
	tbl_5._fireActiveEventMapSignal = createSignal_upvr_result2
	tbl_5._fireFocusedGuiObjectSignal = var5_result2
	tbl_5.activeEventMap = createSignal_upvr_result1_2
	tbl_5.focusedGuiObject = createSignal_upvr_result1
	local setmetatable_result1 = setmetatable(tbl_5, module_upvr)
	setmetatable_result1:_connectToInputEvents()
	return setmetatable_result1
end
function module_upvr._fireInputEvent(arg1, arg2, arg3, arg4) -- Line 111
	local var15 = arg1.activeEventMap:getValue()[arg3.KeyCode]
	if var15 then
		local tbl_3 = {
			Delta = arg3.Delta;
			KeyCode = arg3.KeyCode;
			Position = arg3.Position;
			UserInputState = arg3.UserInputState;
			UserInputType = arg3.UserInputType;
		}
		tbl_3.wasProcessed = arg4
		arg1._eventPropagationService:propagateEvent(arg2, var15, tbl_3, false)
	end
end
function module_upvr._connectToInputEvents(arg1) -- Line 126
	local function forwardInputEvent(arg1_2, arg2) -- Line 128
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		local any_getSelection_result1_2 = arg1._engineInterface.getSelection()
		if any_getSelection_result1_2 then
			arg1:_fireInputEvent(any_getSelection_result1_2, arg1_2, arg2)
		end
	end
	table.insert(arg1._engineEventConnections, arg1._engineInterface.InputBegan:Connect(forwardInputEvent))
	table.insert(arg1._engineEventConnections, arg1._engineInterface.InputChanged:Connect(forwardInputEvent))
	table.insert(arg1._engineEventConnections, arg1._engineInterface.InputEnded:Connect(forwardInputEvent))
	table.insert(arg1._engineEventConnections, arg1._engineInterface.SelectionChanged:Connect(function() -- Line 139, Named "onFocusChanged"
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		local any_getValue_result1 = arg1.focusedGuiObject:getValue()
		local _engineInterface = arg1._engineInterface
		local any_getSelection_result1_3 = _engineInterface.getSelection()
		if any_getValue_result1 then
			if arg1._silentBlurTarget ~= any_getValue_result1 then
				_engineInterface = false
			else
				_engineInterface = true
			end
			arg1._eventPropagationService:propagateEvent(any_getValue_result1, "blur", nil, _engineInterface)
			arg1._silentBlurTarget = nil
		end
		_engineInterface = arg1._fireFocusedGuiObjectSignal
		_engineInterface(any_getSelection_result1_3)
		if any_getSelection_result1_3 then
			if any_getSelection_result1_3 ~= arg1._silentFocusTarget then
				_engineInterface = false
			else
				_engineInterface = true
			end
			arg1._eventPropagationService:propagateEvent(any_getSelection_result1_3, "focus", nil, _engineInterface)
			arg1._silentFocusTarget = nil
		end
		arg1:_updateActiveEventMap(any_getValue_result1)
	end))
end
function module_upvr._cancelHandler(arg1, arg2, arg3) -- Line 160
	if arg3 ~= "blur" and arg3 ~= "focus" then
		arg1._eventPropagationService:propagateEvent(arg2, arg3, {
			KeyCode = Enum.KeyCode.Unknown;
			UserInputType = Enum.UserInputType.None;
			UserInputState = Enum.UserInputState.Cancel;
		}, false)
	end
end
local getAncestors_upvr = FocusNavigationUtils.getAncestors
local shallowEqual_upvr = FocusNavigationUtils.shallowEqual
function module_upvr._updateActiveEventMap(arg1, arg2) -- Line 170
	--[[ Upvalues[2]:
		[1]: getAncestors_upvr (readonly)
		[2]: shallowEqual_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local tbl_4 = {}
	local any_getSelection_result1 = arg1._engineInterface.getSelection()
	if any_getSelection_result1 then
		local var22_result1 = getAncestors_upvr(any_getSelection_result1)
		for i = #var22_result1, 1, -1 do
			local var55 = var22_result1[i]
			local var56 = arg1._eventMapByInstance[var55]
			if var56 then
				for i_2, v in var56 do
					({})[i_2] = v
					tbl_4[i_2] = nil
					local var57
				end
			end
			local any_getRegisteredEventHandlers_result1 = arg1._eventPropagationService:getRegisteredEventHandlers(var55)
			if any_getRegisteredEventHandlers_result1 then
				for i_3, v_2 in var57 do
					if any_getRegisteredEventHandlers_result1[v_2] then
						tbl_4[i_3] = v_2
					end
				end
			end
		end
	end
	local any_getValue_result1_2 = arg1.activeEventMap:getValue()
	if not shallowEqual_upvr(any_getValue_result1_2, tbl_4) then
		if arg2 then
			for i_4, v_3 in any_getValue_result1_2 do
				if not tbl_4[i_4] then
					arg1:_cancelHandler(arg2, v_3)
				end
			end
		end
		arg1._fireActiveEventMapSignal(tbl_4)
	end
end
function module_upvr.registerEventMap(arg1, arg2, arg3) -- Line 214
	--[[ Upvalues[1]:
		[1]: mockableWarn_upvr (readonly)
	]]
	local var64
	if not var64 then
		var64 = {}
	end
	for i_5, v_4 in arg3 do
		if var64[i_5] and var64[i_5] ~= v_4 and _G.__DEV__ then
			mockableWarn_upvr(string.format("New event will replace existing registered event mapped to %s:".."\n\t     new event: %s\n\texisting event: %s", tostring(i_5), v_4, var64[i_5]))
		end
		var64[i_5] = v_4
	end
	arg1._eventMapByInstance[arg2] = var64
	arg1:_updateActiveEventMap()
end
function module_upvr.deregisterEventMap(arg1, arg2, arg3) -- Line 236
	--[[ Upvalues[1]:
		[1]: mockableWarn_upvr (readonly)
	]]
	local var69
	if not var69 then
		var69 = {}
	end
	for i_6, v_5 in arg3 do
		if var69[i_6] == v_5 then
			var69[i_6] = nil
		elseif _G.__DEV__ then
			mockableWarn_upvr(string.format("Cannot deregister non-matching event input %s:".."\n\t  provided event: %s\n\tregistered event: %s", tostring(i_6), v_5, var69[i_6]))
		end
	end
	arg1._eventMapByInstance[arg2] = var69
	arg1:_updateActiveEventMap(arg1.focusedGuiObject:getValue())
end
function module_upvr.registerEventHandler(arg1, arg2, arg3, arg4, arg5) -- Line 259
	arg1._eventPropagationService:registerEventHandler(arg2, arg3, arg4, arg5)
	arg1:_updateActiveEventMap()
end
function module_upvr.deregisterEventHandler(arg1, arg2, arg3, arg4, arg5) -- Line 269
	arg1:_cancelHandler(arg2, arg3)
	arg1._eventPropagationService:deregisterEventHandler(arg2, arg3, arg4, arg5)
	arg1:_updateActiveEventMap(arg1.focusedGuiObject:getValue())
end
function module_upvr.registerEventHandlers(arg1, arg2, arg3) -- Line 282
	arg1._eventPropagationService:registerEventHandlers(arg2, arg3)
	arg1:_updateActiveEventMap()
end
function module_upvr.deregisterEventHandlers(arg1, arg2, arg3) -- Line 287
	for i_7, _ in arg3 do
		arg1:_cancelHandler(arg2, i_7)
	end
	arg1._eventPropagationService:deregisterEventHandlers(arg2, arg3)
	arg1:_updateActiveEventMap(arg1.focusedGuiObject:getValue())
end
local isValidFocusTarget_upvr = require(script.Parent.isValidFocusTarget)
function module_upvr.registerFocusBehavior(arg1, arg2, arg3) -- Line 298
	--[[ Upvalues[2]:
		[1]: mockableWarn_upvr (readonly)
		[2]: isValidFocusTarget_upvr (readonly)
	]]
	if _G.__DEV__ then
		local var76 = arg1._focusBehaviorByInstance[arg2]
		if var76 ~= nil then
			mockableWarn_upvr(string.format("New focus behavior will replace existing registered focus behavior:".."\n\t     new behavior: %s\n\texisting behavior: %s", tostring(arg3), tostring(var76.behavior)))
		end
	end
	local tbl = {}
	tbl.behavior = arg3
	tbl.connection = arg2.SelectionChanged:Connect(function(arg1_4, arg2_3, arg3_3) -- Line 314
		--[[ Upvalues[4]:
			[1]: arg2 (readonly)
			[2]: arg3 (readonly)
			[3]: isValidFocusTarget_upvr (copied, readonly)
			[4]: arg1 (readonly)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [2] 3. Error Block 3 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [2] 3. Error Block 3 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [23] 21. Error Block 18 start (CF ANALYSIS FAILED)
		-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [24.8]
		arg1:focusGuiObject(nil, false)
		-- KONSTANTERROR: [23] 21. Error Block 18 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [34] 30. Error Block 12 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [34] 30. Error Block 12 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [44] 38. Error Block 17 start (CF ANALYSIS FAILED)
		if arg3.onDescendantFocusChanged then
			arg3.onDescendantFocusChanged(arg3_3)
		end
		-- KONSTANTERROR: [44] 38. Error Block 17 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [53] 45. Error Block 16 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [53] 45. Error Block 16 end (CF ANALYSIS FAILED)
	end)
	arg1._focusBehaviorByInstance[arg2] = tbl
end
function module_upvr.deregisterFocusBehavior(arg1, arg2, arg3) -- Line 352
	--[[ Upvalues[1]:
		[1]: mockableWarn_upvr (readonly)
	]]
	local var79 = arg1._focusBehaviorByInstance[arg2]
	if _G.__DEV__ then
		if not var79 then
			mockableWarn_upvr(string.format("Cannot deregister an unregistered focus behavior:".."\n\t  provided behavior: %s", tostring(arg3)))
		end
		if var79 and var79.behavior ~= arg3 then
			mockableWarn_upvr(string.format("Cannot deregister non-matching focus behavior:".."\n\t  provided behavior: %s\n\tregistered behavior: %s", tostring(arg3), tostring(var79.behavior)))
		end
	end
	if var79 then
		var79.connection:Disconnect()
		arg1._focusBehaviorByInstance[arg2] = nil
	end
end
function module_upvr.focusGuiObject(arg1, arg2, arg3) -- Line 381
	if arg3 then
		arg1._silentBlurTarget = arg1._engineInterface.getSelection()
		arg1._silentFocusTarget = arg2
	else
		arg1._silentBlurTarget = nil
		arg1._silentFocusTarget = nil
	end
	arg1._engineInterface.setSelection(arg2)
end
function module_upvr.teardown(arg1) -- Line 396
	for _, v_7 in arg1._engineEventConnections do
		v_7:Disconnect()
	end
	for _, v_8 in arg1._focusBehaviorByInstance do
		v_8.connection:Disconnect()
	end
end
return module_upvr