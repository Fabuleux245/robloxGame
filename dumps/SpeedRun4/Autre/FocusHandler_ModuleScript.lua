-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:53:05
-- Luau version 6, Types version 3
-- Time taken: 0.010400 seconds

local InGameMenuDependencies = require(game:GetService("CorePackages").Packages.InGameMenuDependencies)
local t = InGameMenuDependencies.t
local Roact_upvr = InGameMenuDependencies.Roact
local GetFFlagIGMGamepadSelectionHistory = require(script.Parent.Parent.Parent.Flags.GetFFlagIGMGamepadSelectionHistory)
local any_extend_result1_upvr = Roact_upvr.PureComponent:extend("FocusHandler")
local tbl = {
	isFocused = t.boolean;
	didFocus = t.optional(t.callback);
	didBlur = t.optional(t.callback);
}
local var7
local function INLINED() -- Internal function, doesn't exist in bytecode
	var7 = t.optional(t.boolean)
	return var7
end
if not GetFFlagIGMGamepadSelectionHistory() or not INLINED() then
	var7 = nil
end
tbl.shouldForgetPreviousSelection = var7
local function INLINED_2() -- Internal function, doesn't exist in bytecode
	var7 = t.optional(t.number)
	return var7
end
if not GetFFlagIGMGamepadSelectionHistory() or not INLINED_2() then
	var7 = nil
end
tbl.currentHandlerId = var7
local function INLINED_3() -- Internal function, doesn't exist in bytecode
	var7 = t.optional(t.number)
	return var7
end
if not GetFFlagIGMGamepadSelectionHistory() or not INLINED_3() then
	var7 = nil
end
tbl.candidateHandlerId = var7
local function INLINED_4() -- Internal function, doesn't exist in bytecode
	var7 = t.table
	return var7
end
if not GetFFlagIGMGamepadSelectionHistory() or not INLINED_4() then
	var7 = nil
end
tbl.previousSelections = var7
local function INLINED_5() -- Internal function, doesn't exist in bytecode
	var7 = t.callback
	return var7
end
if not GetFFlagIGMGamepadSelectionHistory() or not INLINED_5() then
	var7 = nil
end
tbl.requestFocusForHandlerId = var7
local function INLINED_6() -- Internal function, doesn't exist in bytecode
	var7 = t.callback
	return var7
end
if not GetFFlagIGMGamepadSelectionHistory() or not INLINED_6() then
	var7 = nil
end
tbl.forgetLastSelectionForHandlerId = var7
local function INLINED_7() -- Internal function, doesn't exist in bytecode
	var7 = t.callback
	return var7
end
if not GetFFlagIGMGamepadSelectionHistory() or not INLINED_7() then
	var7 = nil
end
tbl.blurCurrentFocusHandler = var7
var7 = Roact_upvr.Children
tbl[var7] = t.optional(t.table)
any_extend_result1_upvr.validateProps = t.strictInterface(tbl)
if GetFFlagIGMGamepadSelectionHistory() then
	local var8_upvw = 1
	function any_extend_result1_upvr.init(arg1) -- Line 50
		--[[ Upvalues[1]:
			[1]: var8_upvw (read and write)
		]]
		arg1.id = var8_upvw
		var8_upvw += 1
	end
end
local function render(arg1) -- Line 56
	--[[ Upvalues[1]:
		[1]: Roact_upvr (readonly)
	]]
	return Roact_upvr.createFragment(arg1.props[Roact_upvr.Children])
end
any_extend_result1_upvr.render = render
if GetFFlagIGMGamepadSelectionHistory() then
	local function didMount(arg1) -- Line 61
		if arg1.props.isFocused then
			arg1.props.requestFocusForHandlerId(arg1.id)
		end
	end
	any_extend_result1_upvr.didMount = didMount
else
	any_extend_result1_upvr.didMount = function(arg1) -- Line 67, Named "didMount"
		if arg1.props.isFocused then
			arg1.props.didFocus()
		end
	end
end
if GetFFlagIGMGamepadSelectionHistory() then
	local function didUpdate(arg1, arg2) -- Line 75
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		local shouldForgetPreviousSelection_2 = arg1.props.shouldForgetPreviousSelection
		if shouldForgetPreviousSelection_2 then
			shouldForgetPreviousSelection_2 = not arg2.shouldForgetPreviousSelection
		end
		local var16 = arg1.props.previousSelections[arg1.id]
		if shouldForgetPreviousSelection_2 or var16 ~= nil and not var16:IsDescendantOf(game) then
			arg1.props.forgetLastSelectionForHandlerId(arg1.id)
		end
		local var17 = false
		if arg1.props.candidateHandlerId ~= arg1.id then
			if arg1.props.candidateHandlerId == nil then
				var17 = false
			else
				var17 = true
			end
		end
		local var18 = false
		if arg2.candidateHandlerId ~= arg1.id then
			if arg2.candidateHandlerId == nil then
				var18 = false
			else
				var18 = true
			end
		end
		if arg1.props.currentHandlerId == arg1.id then
			if arg2.currentHandlerId == arg1.id then
			else
			end
		end
		local var19 = false
		if arg1.props.currentHandlerId == nil then
			var19 = false
			if arg2.currentHandlerId ~= nil then
				if arg2.currentHandlerId == arg1.id then
					var19 = false
				else
					var19 = true
				end
			end
		end
		local var20 = var19
		if var20 then
			if not var17 then
			end
		end
		local var21 = not arg2.isFocused
		if var21 then
			var21 = arg1.props.isFocused
		end
		if not arg2.isFocused or not not arg1.props.isFocused or var17 then
		end
		if arg2.currentHandlerId == arg1.id then
			if arg1.props.currentHandlerId == arg1.id then
			else
			end
		end
		if var21 or arg1.props.isFocused then
			arg1.props.requestFocusForHandlerId(arg1.id)
		elseif true and arg1.props.didFocus then
			arg1.props.didFocus(nil)
		end
		if not var18 and arg1.props.currentHandlerId == arg1.id then
			arg1.props.blurCurrentFocusHandler(arg1.id, arg1.props.shouldForgetPreviousSelection)
		end
		if true and arg1.props.didBlur then
			arg1.props.didBlur()
		end
	end
	any_extend_result1_upvr.didUpdate = didUpdate
else
	any_extend_result1_upvr.didUpdate = function(arg1, arg2) -- Line 135, Named "didUpdate"
		if arg1.props.isFocused and not arg2.isFocused and arg1.props.didFocus then
			arg1.props.didFocus()
		elseif not arg1.props.isFocused and arg2.isFocused and arg1.props.didBlur then
			arg1.props.didBlur()
		end
	end
end
if GetFFlagIGMGamepadSelectionHistory() then
	local function willUnmount(arg1) -- Line 145
		-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [18] 12. Error Block 3 start (CF ANALYSIS FAILED)
		arg1.props.didBlur()
		do
			return
		end
		-- KONSTANTERROR: [18] 12. Error Block 3 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [24] 16. Error Block 4 start (CF ANALYSIS FAILED)
		arg1.props.forgetLastSelectionForHandlerId(arg1.id)
		-- KONSTANTERROR: [24] 16. Error Block 4 end (CF ANALYSIS FAILED)
	end
	any_extend_result1_upvr.willUnmount = willUnmount
else
	any_extend_result1_upvr.willUnmount = function(arg1) -- Line 156, Named "willUnmount"
		if arg1.props.isFocused and arg1.props.didBlur then
			arg1.props.didBlur()
		end
	end
end
if GetFFlagIGMGamepadSelectionHistory() then
	local FocusHandlerContext_upvr = require(script.Parent.FocusHandlerUtils.FocusHandlerContext)
	local Cryo_upvr = InGameMenuDependencies.Cryo
	return function(arg1) -- Line 164, Named "FocusHandlerWithContext"
		--[[ Upvalues[4]:
			[1]: Roact_upvr (readonly)
			[2]: FocusHandlerContext_upvr (readonly)
			[3]: any_extend_result1_upvr (readonly)
			[4]: Cryo_upvr (readonly)
		]]
		return Roact_upvr.createElement(FocusHandlerContext_upvr.Consumer, {
			render = function(arg1_2) -- Line 166, Named "render"
				--[[ Upvalues[4]:
					[1]: Roact_upvr (copied, readonly)
					[2]: any_extend_result1_upvr (copied, readonly)
					[3]: Cryo_upvr (copied, readonly)
					[4]: arg1 (readonly)
				]]
				return Roact_upvr.createElement(any_extend_result1_upvr, Cryo_upvr.Dictionary.join(arg1, {
					currentHandlerId = arg1_2.currentHandlerId;
					previousSelections = arg1_2.previousSelections;
					requestFocusForHandlerId = arg1_2.requestFocusForHandlerId;
					forgetLastSelectionForHandlerId = arg1_2.forgetLastSelectionForHandlerId;
					blurCurrentFocusHandler = arg1_2.blurCurrentFocusHandler;
					candidateHandlerId = arg1_2.candidateHandlerId;
				}))
			end;
		})
	end
end
return any_extend_result1_upvr