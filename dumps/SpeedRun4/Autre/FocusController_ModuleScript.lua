-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:00:37
-- Luau version 6, Types version 3
-- Time taken: 0.008962 seconds

local debugPrint_upvr = require(script.Parent.debugPrint)
local module_upvr = {}
module_upvr.__index = module_upvr
local createSignal_upvr = require(script.Parent.createSignal)
function module_upvr.new() -- Line 16
	--[[ Upvalues[2]:
		[1]: createSignal_upvr (readonly)
		[2]: module_upvr (readonly)
	]]
	return setmetatable({
		selectionChangedSignal = createSignal_upvr();
		boundInputsChangedSignal = createSignal_upvr();
		focusNodeTree = {};
		allNodes = {};
		rootRef = nil;
		engineInterface = nil;
		captureFocusOnInitialize = false;
		moveFocusToOnInitialize = nil;
		inputDisconnectors = {};
		boundInputs = {};
		focusedLeaf = nil;
		inProgressFocus = nil;
	}, module_upvr)
end
function module_upvr.isInitialized(arg1) -- Line 37
	local var5
	if arg1.engineInterface == nil then
		var5 = false
	else
		var5 = true
	end
	return var5
end
local function moveFocusTo(arg1, arg2) -- Line 41
	--[[ Upvalues[1]:
		[1]: debugPrint_upvr (readonly)
	]]
	if arg1.engineInterface == nil then
		arg1.moveFocusToOnInitialize = arg2
	else
		debugPrint_upvr("[FOCUS] Move focus to", arg2)
		local var6 = arg1.allNodes[arg2]
		if var6 ~= nil and not arg1:isNodeFocused(var6) then
			var6:focus()
		end
		arg1:debugPrintTree()
	end
end
module_upvr.moveFocusTo = moveFocusTo
function module_upvr.moveFocusToNeighbor(arg1, arg2) -- Line 56
	--[[ Upvalues[1]:
		[1]: debugPrint_upvr (readonly)
	]]
	if arg1.engineInterface == nil then
		error("FocusController is not connected to a component hierarchy!", 2)
	end
	if arg1.focusedLeaf ~= nil then
		debugPrint_upvr("[FOCUS] Move focus to", arg2, "from", arg1.focusedLeaf.ref)
		local any_getValue_result1 = arg1.focusedLeaf.ref:getValue()
		if any_getValue_result1 ~= nil and any_getValue_result1[arg2] ~= nil then
			arg1:setSelection(any_getValue_result1[arg2])
		end
	end
end
function module_upvr.getSelection(arg1) -- Line 70
	return arg1.engineInterface.getSelection()
end
function module_upvr.setSelection(arg1, arg2) -- Line 74
	arg1.engineInterface.setSelection(arg2)
end
function module_upvr.registerNode(arg1, arg2, arg3, arg4) -- Line 78
	--[[ Upvalues[1]:
		[1]: debugPrint_upvr (readonly)
	]]
	if arg2 ~= nil then
		debugPrint_upvr("[TREE ] Registering child node", arg3)
		local var9 = arg1.focusNodeTree[arg2]
		if not var9 then
			var9 = {}
		end
		var9[arg3] = arg4
		arg1.focusNodeTree[arg2] = var9
		arg1.allNodes[arg3] = arg4
		arg1:descendantAddedRefocus()
	else
		debugPrint_upvr("[TREE ] Registering root node", arg3)
		arg1.rootRef = arg3
		arg1.allNodes[arg3] = arg4
		if arg1.captureFocusOnRootRegistered then
			arg1.captureFocusOnRootRegistered = false
			arg1:captureFocus()
		end
	end
end
function module_upvr.deregisterNode(arg1, arg2, arg3) -- Line 103
	--[[ Upvalues[1]:
		[1]: debugPrint_upvr (readonly)
	]]
	if arg2 ~= nil then
		debugPrint_upvr("[TREE ] Deregistering child node", arg3)
		arg1.focusNodeTree[arg2][arg3] = nil
		arg1.allNodes[arg3] = nil
		arg1:descendantRemovedRefocus()
	else
		debugPrint_upvr("[TREE ] Deregistering root node", arg3)
		arg1.allNodes[arg3] = nil
	end
end
function module_upvr.needsDescendantRemovedRefocus(arg1) -- Line 119
	local var10
	if var10 == nil then return end
	if arg1.focusedLeaf.ref:getValue() ~= nil then
		var10 = false
	else
		var10 = true
	end
	return var10
end
function module_upvr.descendantRemovedRefocus(arg1) -- Line 132
	--[[ Upvalues[1]:
		[1]: debugPrint_upvr (readonly)
	]]
	local var11
	if var11 then
		var11 = debugPrint_upvr
		var11("[FOCUS] Focused node was removed; refocusing from nearest existing ancestor")
		var11 = arg1.focusedLeaf.parent
		while var11 ~= nil and arg1.allNodes[var11.ref] == nil do
			var11 = var11.parent
		end
		if var11 ~= nil then
			var11:focus()
		end
	end
end
local Cryo_upvr = require(script.Parent.Parent.Cryo)
function module_upvr.needsDescendantAddedRefocus(arg1) -- Line 149
	--[[ Upvalues[1]:
		[1]: Cryo_upvr (readonly)
	]]
	if arg1.focusedLeaf == nil then
		return nil
	end
	return not Cryo_upvr.isEmpty(arg1:getChildren(arg1.focusedLeaf))
end
function module_upvr.descendantAddedRefocus(arg1) -- Line 162
	--[[ Upvalues[1]:
		[1]: debugPrint_upvr (readonly)
	]]
	if arg1:needsDescendantAddedRefocus() then
		debugPrint_upvr("[FOCUS] Currently-focused node is no longer a leaf; refocusing", arg1.focusedLeaf.ref)
		arg1.focusedLeaf:focus()
	end
end
function module_upvr.getChildren(arg1, arg2) -- Line 171
	local var13 = arg1.focusNodeTree[arg2]
	if not var13 then
		var13 = {}
	end
	return var13
end
function module_upvr.isNodeFocused(arg1, arg2) -- Line 175
	if arg1.focusedLeaf == nil then
		return false
	end
	if arg1.focusedLeaf == arg2 then
		return true
	end
	local parent = arg1.focusedLeaf.parent
	while parent ~= nil do
		if parent == arg2 then
			return true
		end
	end
	return false
end
function module_upvr.setFocusedLeaf(arg1, arg2) -- Line 198
	arg1.focusedLeaf = arg2
end
function module_upvr.setInProgressFocus(arg1, arg2) -- Line 202
	arg1.inProgressFocus = arg2
end
function module_upvr.isInProgressFocus(arg1, arg2) -- Line 206
	local var15
	if arg1.inProgressFocus ~= arg2 then
		var15 = false
	else
		var15 = true
	end
	return var15
end
function module_upvr.debugPrintTree(arg1) -- Line 211
	--[[ Upvalues[1]:
		[1]: debugPrint_upvr (readonly)
	]]
	if not debugPrint_upvr.isEnabled then
	else
		local function recursePrintTree_upvr(arg1_2, arg2) -- Line 216, Named "recursePrintTree"
			--[[ Upvalues[3]:
				[1]: arg1 (readonly)
				[2]: debugPrint_upvr (copied, readonly)
				[3]: recursePrintTree_upvr (readonly)
			]]
			local tostring_result1 = tostring(arg1_2.ref)
			if arg1:isNodeFocused(arg1_2) then
				tostring_result1 = tostring_result1..'*'
			end
			debugPrint_upvr(arg2, tostring_result1)
			for _, v_5 in pairs(arg1:getChildren(arg1_2)) do
				recursePrintTree_upvr(v_5, arg2.."  ")
			end
		end
		debugPrint_upvr("Focus Node Tree:")
		recursePrintTree_upvr(arg1.allNodes[arg1.rootRef], "  ")
	end
end
local Input_upvr = require(script.Parent.Input)
function module_upvr.updateInputBindings(arg1) -- Line 236
	--[[ Upvalues[2]:
		[1]: Input_upvr (readonly)
		[2]: debugPrint_upvr (readonly)
	]]
	local tbl = {}
	local focusedLeaf_2 = arg1.focusedLeaf
	while focusedLeaf_2 ~= nil do
		for _, v in pairs(focusedLeaf_2.inputBindings) do
			local any_getUniqueKey_result1 = Input_upvr.getUniqueKey(v)
			if tbl[any_getUniqueKey_result1] == nil then
				debugPrint_upvr("[INPUT] Bind input", any_getUniqueKey_result1)
				tbl[any_getUniqueKey_result1] = v
			end
		end
	end
	for _, v_2 in pairs(arg1.inputDisconnectors) do
		v_2()
	end
	arg1.inputDisconnectors = {}
	arg1.boundInputs = {}
	for i_3, v_3 in pairs(tbl) do
		arg1.inputDisconnectors[i_3] = Input_upvr.connectToEvent(v_3, arg1.engineInterface)
		if v_3.keyCode then
			local meta = v_3.meta
			if not meta then
				meta = {}
			end
			arg1.boundInputs[v_3.keyCode] = meta
		end
	end
	arg1.boundInputsChangedSignal:fire(arg1.boundInputs)
end
function module_upvr.initialize(arg1, arg2) -- Line 271
	--[[ Upvalues[1]:
		[1]: debugPrint_upvr (readonly)
	]]
	if arg1.engineInterface ~= nil then
		error("FocusController cannot be initialized more than once; make sure you are not passing it to multiple components")
	end
	arg1.engineInterface = arg2
	arg1.guiServiceConnection = arg2.subscribeToSelectionChanged(function() -- Line 284
		--[[ Upvalues[3]:
			[1]: arg1 (readonly)
			[2]: arg2 (readonly)
			[3]: debugPrint_upvr (copied, readonly)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 30 start (CF ANALYSIS FAILED)
		local var51
		if var51 == nil then
		else
			if arg1.focusedLeaf == nil then
				var51 = false
			else
				var51 = true
			end
			arg1.focusedLeaf = nil
			local any_getSelection_result1 = arg2.getSelection()
			-- KONSTANTERROR: [0] 1. Error Block 30 end (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [31] 22. Error Block 9 start (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [31] 22. Error Block 9 end (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [60] 44. Error Block 26 start (CF ANALYSIS FAILED)
			if arg1.focusedLeaf ~= nil or var51 then
				arg1.selectionChangedSignal:fire()
				arg1:updateInputBindings()
			end
			-- KONSTANTERROR: [60] 44. Error Block 26 end (CF ANALYSIS FAILED)
		end
	end)
	if arg1.captureFocusOnInitialize then
		arg1:captureFocus()
	end
	if arg1.moveFocusToOnInitialize then
		arg1:moveFocusTo(arg1.moveFocusToOnInitialize)
	end
end
local function captureFocus(arg1) -- Line 344
	if arg1.engineInterface == nil then
		arg1.captureFocusOnInitialize = true
	else
		if arg1.rootRef == nil then
			arg1.captureFocusOnRootRegistered = true
			return
		end
		arg1.allNodes[arg1.rootRef]:focus()
		arg1:debugPrintTree()
	end
end
module_upvr.captureFocus = captureFocus
local function releaseFocus(arg1) -- Line 355
	if arg1.engineInterface ~= nil then
		arg1.engineInterface.setSelection(nil)
	end
	arg1.captureFocusOnInitialize = false
	arg1.captureFocusOnRootRegistered = false
end
module_upvr.releaseFocus = releaseFocus
function module_upvr.teardown(arg1) -- Line 363
	if arg1.guiServiceConnection ~= nil then
		arg1.guiServiceConnection:Disconnect()
	end
	for _, v_4 in pairs(arg1.inputDisconnectors) do
		v_4()
	end
	arg1.rootRef = nil
	arg1.engineInterface = nil
	arg1.captureFocusOnInitialize = false
	arg1.captureFocusOnRootRegistered = false
	arg1.focusedLeaf = nil
end
function module_upvr.subscribeToSelectionChange(arg1, arg2) -- Line 382
	--[[ Upvalues[1]:
		[1]: debugPrint_upvr (readonly)
	]]
	debugPrint_upvr("[TREE ] New subscription to selection change event")
	return arg1.selectionChangedSignal:subscribe(arg2)
end
local FocusControllerInternalApi_upvr = require(script.Parent.FocusControllerInternalApi)
function module_upvr.createPublicApiWrapper() -- Line 389
	--[[ Upvalues[2]:
		[1]: module_upvr (readonly)
		[2]: FocusControllerInternalApi_upvr (readonly)
	]]
	local any_new_result1_upvr = module_upvr.new()
	return {
		[FocusControllerInternalApi_upvr] = any_new_result1_upvr;
		moveFocusTo = function(...) -- Line 394, Named "moveFocusTo"
			--[[ Upvalues[1]:
				[1]: any_new_result1_upvr (readonly)
			]]
			any_new_result1_upvr:moveFocusTo(...)
		end;
		moveFocusLeft = function() -- Line 397, Named "moveFocusLeft"
			--[[ Upvalues[1]:
				[1]: any_new_result1_upvr (readonly)
			]]
			any_new_result1_upvr:moveFocusToNeighbor("NextSelectionLeft")
		end;
		moveFocusRight = function() -- Line 400, Named "moveFocusRight"
			--[[ Upvalues[1]:
				[1]: any_new_result1_upvr (readonly)
			]]
			any_new_result1_upvr:moveFocusToNeighbor("NextSelectionRight")
		end;
		moveFocusUp = function() -- Line 403, Named "moveFocusUp"
			--[[ Upvalues[1]:
				[1]: any_new_result1_upvr (readonly)
			]]
			any_new_result1_upvr:moveFocusToNeighbor("NextSelectionUp")
		end;
		moveFocusDown = function() -- Line 406, Named "moveFocusDown"
			--[[ Upvalues[1]:
				[1]: any_new_result1_upvr (readonly)
			]]
			any_new_result1_upvr:moveFocusToNeighbor("NextSelectionDown")
		end;
		captureFocus = function() -- Line 409, Named "captureFocus"
			--[[ Upvalues[1]:
				[1]: any_new_result1_upvr (readonly)
			]]
			any_new_result1_upvr:captureFocus()
		end;
		releaseFocus = function() -- Line 412, Named "releaseFocus"
			--[[ Upvalues[1]:
				[1]: any_new_result1_upvr (readonly)
			]]
			any_new_result1_upvr:releaseFocus()
		end;
		getCurrentFocus = function() -- Line 415, Named "getCurrentFocus"
			--[[ Upvalues[1]:
				[1]: any_new_result1_upvr (readonly)
			]]
			local focusedLeaf = any_new_result1_upvr.focusedLeaf
			local var62
			local function INLINED() -- Internal function, doesn't exist in bytecode
				var62 = focusedLeaf.ref
				return var62
			end
			if not focusedLeaf or not INLINED() then
				var62 = nil
			end
			return var62
		end;
		getBoundInputs = function() -- Line 419, Named "getBoundInputs"
			--[[ Upvalues[1]:
				[1]: any_new_result1_upvr (readonly)
			]]
			return any_new_result1_upvr.boundInputs
		end;
		subscribeToBoundInputsChanged = function(arg1) -- Line 422, Named "subscribeToBoundInputsChanged"
			--[[ Upvalues[1]:
				[1]: any_new_result1_upvr (readonly)
			]]
			return any_new_result1_upvr.boundInputsChangedSignal:subscribe(arg1)
		end;
	}
end
return module_upvr