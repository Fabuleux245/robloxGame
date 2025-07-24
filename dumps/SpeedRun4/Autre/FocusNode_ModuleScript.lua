-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:00:38
-- Luau version 6, Types version 3
-- Time taken: 0.006643 seconds

local Cryo_upvr = require(script.Parent.Parent.Cryo)
local module_upvr = {}
module_upvr.__index = module_upvr
function module_upvr.new(arg1, arg2) -- Line 17
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	local var3
	if arg1.parentFocusNode ~= nil then
		var3 = arg1.parentFocusNode.focusController
	elseif arg1.focusController ~= nil then
		var3 = arg1.focusController
	else
		error("Cannot create node without focus manager")
	end
	local tbl = {
		focusController = var3;
	}
	tbl.ref = arg2
	tbl.lastFocused = nil
	local setmetatable_result1 = setmetatable(tbl, module_upvr)
	setmetatable_result1:updateNavProps(arg1)
	return setmetatable_result1
end
local FocusControllerInternalApi_upvr = require(script.Parent.FocusControllerInternalApi)
function module_upvr.__getFocusControllerInternal(arg1) -- Line 40
	--[[ Upvalues[1]:
		[1]: FocusControllerInternalApi_upvr (readonly)
	]]
	return arg1.focusController[FocusControllerInternalApi_upvr]
end
function module_upvr.__findDefaultChildNode(arg1) -- Line 44
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	local pairs_result1, pairs_result2, pairs_result3 = pairs(arg1:__getFocusControllerInternal():getChildren(arg1))
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [43] 31. Error Block 11 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [43] 31. Error Block 11 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [19] 15. Error Block 2 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [19] 15. Error Block 2 end (CF ANALYSIS FAILED)
end
local inputBindingsEqual_upvr = require(script.Parent.inputBindingsEqual)
function module_upvr.updateNavProps(arg1, arg2) -- Line 98
	--[[ Upvalues[1]:
		[1]: inputBindingsEqual_upvr (readonly)
	]]
	local var11 = false
	local var12
	if arg2.restorePreviousChildFocus ~= nil then
		var11 = arg2.restorePreviousChildFocus
	end
	var12 = arg2.defaultChild
	arg1.defaultChildRef = var12
	arg1.restorePreviousChildFocus = var11
	var12 = arg2.inputBindings
	if not var12 then
		var12 = {}
	end
	arg1.inputBindings = var12
	var12 = arg1:__getFocusControllerInternal()
	if var12:isNodeFocused(arg1) and not inputBindingsEqual_upvr(arg1.inputBindings, arg1.inputBindings) then
		var12:updateInputBindings()
	end
end
local Config_upvr = require(script.Parent.Config)
local debugPrint_upvr = require(script.Parent.debugPrint)
function module_upvr.focus(arg1) -- Line 116
	--[[ Upvalues[3]:
		[1]: Config_upvr (readonly)
		[2]: Cryo_upvr (readonly)
		[3]: debugPrint_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var20
	if not Config_upvr.Enabled then
	else
		local any___getFocusControllerInternal_result1_upvr_3 = arg1:__getFocusControllerInternal()
		if not any___getFocusControllerInternal_result1_upvr_3:isInitialized() then return end
		any___getFocusControllerInternal_result1_upvr_3:setInProgressFocus(arg1)
		if Cryo_upvr.isEmpty(any___getFocusControllerInternal_result1_upvr_3:getChildren(arg1)) then
			var20 = arg1.ref:getValue()
			any___getFocusControllerInternal_result1_upvr_3:setSelection(var20)
			return
		end
		var20 = arg1.defaultChildRef
		if var20 ~= nil then
			var20 = any___getFocusControllerInternal_result1_upvr_3.allNodes[arg1.defaultChildRef]
			if var20 ~= nil then
				var20 = arg1.defaultChildRef:getValue()
				if var20 == nil then
					local _ = false
					-- KONSTANTWARNING: Skipped task `defvar` above
				else
				end
			end
		end
		var20 = true
		if arg1.timeout ~= nil then
			if os.clock() >= arg1.timeout then
				var20 = false
			else
				var20 = true
			end
		end
		if arg1.restorePreviousChildFocus and arg1.lastFocused ~= nil and arg1.lastFocused:getValue() then
			debugPrint_upvr("[FOCUS] Restore previous focus:", arg1.lastFocused)
			any___getFocusControllerInternal_result1_upvr_3:moveFocusTo(arg1.lastFocused)
			return
		end
		if arg1.defaultChildRef and (var20 or true) then
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			if true then
				debugPrint_upvr("[FOCUS] Found valid default child", arg1.defaultChildRef, "for", arg1.ref)
				arg1.timeout = nil
				any___getFocusControllerInternal_result1_upvr_3:moveFocusTo(arg1.defaultChildRef)
			else
				if arg1.timeout == nil then
					debugPrint_upvr("[FOCUS] Default child specified is not valid. Wait for it to be assigned...")
					-- KONSTANTERROR: Expression was reused, decompilation is incorrect
					arg1.timeout = os.clock() + 0.5
				end
				task.delay(0, function() -- Line 155
					--[[ Upvalues[2]:
						[1]: any___getFocusControllerInternal_result1_upvr_3 (readonly)
						[2]: arg1 (readonly)
					]]
					if any___getFocusControllerInternal_result1_upvr_3:isInProgressFocus(arg1) then
						arg1:focus()
					end
				end)
			end
		end
		if arg1.timeout ~= nil then
			debugPrint_upvr("[FOCUS] Timeout for default child of", arg1.ref)
			arg1.timeout = nil
		end
		local any___findDefaultChildNode_result1_2 = arg1:__findDefaultChildNode()
		if any___findDefaultChildNode_result1_2 ~= nil then
			debugPrint_upvr("[FOCUS] No default, use fallback logic to focus", any___findDefaultChildNode_result1_2.ref)
			any___findDefaultChildNode_result1_2:focus()
			return
		end
		any___getFocusControllerInternal_result1_upvr_3:setFocusedLeaf(arg1)
		any___getFocusControllerInternal_result1_upvr_3:setInProgressFocus(nil)
	end
end
function module_upvr.attachToTree(arg1, arg2, arg3) -- Line 180
	--[[ Upvalues[1]:
		[1]: Cryo_upvr (readonly)
	]]
	local any___getFocusControllerInternal_result1_upvr_2 = arg1:__getFocusControllerInternal()
	any___getFocusControllerInternal_result1_upvr_2:registerNode(arg2, arg1.ref, arg1)
	arg1.parent = arg2
	arg1.disconnectSelectionListener = any___getFocusControllerInternal_result1_upvr_2:subscribeToSelectionChange(function() -- Line 185
		--[[ Upvalues[4]:
			[1]: any___getFocusControllerInternal_result1_upvr_2 (readonly)
			[2]: arg1 (readonly)
			[3]: arg3 (readonly)
			[4]: Cryo_upvr (copied, readonly)
		]]
		local any_isNodeFocused_result1 = any___getFocusControllerInternal_result1_upvr_2:isNodeFocused(arg1)
		arg3(any_isNodeFocused_result1)
		if arg1.parent ~= nil and any_isNodeFocused_result1 then
			arg1.parent.lastFocused = arg1.ref
		end
		if not Cryo_upvr.isEmpty(any___getFocusControllerInternal_result1_upvr_2:getChildren(arg1)) and any_isNodeFocused_result1 and any___getFocusControllerInternal_result1_upvr_2:getSelection() == arg1.ref:getValue() then
			arg1:focus()
		end
	end)
end
function module_upvr.detachFromTree(arg1) -- Line 209
	arg1:__getFocusControllerInternal():deregisterNode(arg1.parent, arg1.ref)
	if arg1.disconnectSelectionListener ~= nil then
		arg1.disconnectSelectionListener()
		arg1.disconnectSelectionListener = nil
	end
end
return module_upvr