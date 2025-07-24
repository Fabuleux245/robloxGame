-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:00:42
-- Luau version 6, Types version 3
-- Time taken: 0.008678 seconds

local Cryo_upvr = require(script.Parent.Parent.Parent.Cryo)
local module_5_upvr = {}
module_5_upvr.__index = module_5_upvr
local tbl_upvr_2 = {
	[Enum.UserInputType.Gamepad1] = true;
	[Enum.UserInputType.Gamepad2] = true;
	[Enum.UserInputType.Gamepad3] = true;
	[Enum.UserInputType.Gamepad4] = true;
	[Enum.UserInputType.Gamepad5] = true;
	[Enum.UserInputType.Gamepad6] = true;
	[Enum.UserInputType.Gamepad7] = true;
	[Enum.UserInputType.Gamepad8] = true;
	[Enum.UserInputType.Keyboard] = true;
}
local tbl_upvr = {Enum.KeyCode.Thumbstick2, Enum.KeyCode.DPadDown, Enum.KeyCode.DPadUp, Enum.KeyCode.ButtonL3, Enum.KeyCode.ButtonL2, Enum.KeyCode.DPadRight, Enum.KeyCode.ButtonR1, Enum.KeyCode.ButtonSelect, Enum.KeyCode.ButtonStart, Enum.KeyCode.ButtonY, Enum.KeyCode.DPadLeft, Enum.KeyCode.ButtonR2, Enum.KeyCode.ButtonR3, Enum.KeyCode.ButtonX, Enum.KeyCode.Thumbstick1, Enum.KeyCode.ButtonB, Enum.KeyCode.ButtonA, Enum.KeyCode.ButtonL1}
local tbl_upvr_3 = {
	[Enum.KeyCode.DPadUp] = "NextSelectionUp";
	[Enum.KeyCode.Up] = "NextSelectionUp";
	[Enum.KeyCode.DPadDown] = "NextSelectionDown";
	[Enum.KeyCode.Down] = "NextSelectionDown";
	[Enum.KeyCode.DPadLeft] = "NextSelectionLeft";
	[Enum.KeyCode.Left] = "NextSelectionLeft";
	[Enum.KeyCode.DPadRight] = "NextSelectionRight";
	[Enum.KeyCode.Right] = "NextSelectionRight";
}
local function _(arg1) -- Line 53, Named "defaultInputObject"
	local module_4 = {}
	module_4.KeyCode = arg1
	module_4.Delta = Vector3.new()
	module_4.Position = Vector3.new()
	module_4.UserInputType = Enum.UserInputType.Gamepad1
	module_4.UserInputState = Enum.UserInputState.End
	return module_4
end
local function _(arg1) -- Line 64, Named "wrapDisconnector"
	local module_3 = {}
	module_3.Disconnect = arg1
	return module_3
end
local createSignal_upvr = require(script.Parent.Parent.createSignal)
function module_5_upvr.new() -- Line 70
	--[[ Upvalues[3]:
		[1]: createSignal_upvr (readonly)
		[2]: module_5_upvr (readonly)
		[3]: Cryo_upvr (readonly)
	]]
	local setmetatable_result1_upvr = setmetatable({
		__mockSelected = nil;
		__connectedGamepads = {};
		__gamepadStates = {};
		__selectionChangedSignal = createSignal_upvr();
		__inputSignal = createSignal_upvr();
		__renderStepped = createSignal_upvr();
		__gamepadConnected = createSignal_upvr();
		__gamepadDisconnected = createSignal_upvr();
		__interface = nil;
	}, module_5_upvr)
	local module = {
		getSelection = function() -- Line 88, Named "getSelection"
			--[[ Upvalues[1]:
				[1]: setmetatable_result1_upvr (readonly)
			]]
			return setmetatable_result1_upvr.__mockSelected
		end;
		setSelection = function(arg1) -- Line 91, Named "setSelection"
			--[[ Upvalues[1]:
				[1]: setmetatable_result1_upvr (readonly)
			]]
			setmetatable_result1_upvr.__mockSelected = arg1
			setmetatable_result1_upvr.__selectionChangedSignal:fire()
		end;
		getGamepadConnected = function(arg1) -- Line 97, Named "getGamepadConnected"
			--[[ Upvalues[1]:
				[1]: setmetatable_result1_upvr (readonly)
			]]
			return setmetatable_result1_upvr.__connectedGamepads[arg1] or false
		end;
		getGamepadState = function(arg1) -- Line 100, Named "getGamepadState"
			--[[ Upvalues[1]:
				[1]: setmetatable_result1_upvr (readonly)
			]]
			if setmetatable_result1_upvr.__gamepadStates[arg1] == nil then
				setmetatable_result1_upvr:__initializeGamepadState(arg1)
			end
			return setmetatable_result1_upvr.__gamepadStates[arg1]
		end;
		getNavigationGamepads = function(arg1) -- Line 109, Named "getNavigationGamepads"
			--[[ Upvalues[2]:
				[1]: Cryo_upvr (copied, readonly)
				[2]: setmetatable_result1_upvr (readonly)
			]]
			return Cryo_upvr.Dictionary.keys(setmetatable_result1_upvr.__connectedGamepads)
		end;
		subscribeToSelectionChanged = function(arg1) -- Line 112, Named "subscribeToSelectionChanged"
			--[[ Upvalues[1]:
				[1]: setmetatable_result1_upvr (readonly)
			]]
			return {
				Disconnect = setmetatable_result1_upvr.__selectionChangedSignal:subscribe(arg1);
			}
		end;
		subscribeToInputBegan = function(arg1) -- Line 117, Named "subscribeToInputBegan"
			--[[ Upvalues[1]:
				[1]: setmetatable_result1_upvr (readonly)
			]]
			return {
				Disconnect = setmetatable_result1_upvr.__inputSignal:subscribe(arg1);
			}
		end;
		subscribeToInputChanged = function(arg1) -- Line 122, Named "subscribeToInputChanged"
			--[[ Upvalues[1]:
				[1]: setmetatable_result1_upvr (readonly)
			]]
			return {
				Disconnect = setmetatable_result1_upvr.__inputSignal:subscribe(arg1);
			}
		end;
		subscribeToInputEnded = function(arg1) -- Line 127, Named "subscribeToInputEnded"
			--[[ Upvalues[1]:
				[1]: setmetatable_result1_upvr (readonly)
			]]
			return {
				Disconnect = setmetatable_result1_upvr.__inputSignal:subscribe(arg1);
			}
		end;
		subscribeToRenderStepped = function(arg1) -- Line 132, Named "subscribeToRenderStepped"
			--[[ Upvalues[1]:
				[1]: setmetatable_result1_upvr (readonly)
			]]
			return {
				Disconnect = setmetatable_result1_upvr.__renderStepped:subscribe(arg1);
			}
		end;
		subscribeToGamepadConnected = function(arg1) -- Line 137, Named "subscribeToGamepadConnected"
			--[[ Upvalues[1]:
				[1]: setmetatable_result1_upvr (readonly)
			]]
			return {
				Disconnect = setmetatable_result1_upvr.__gamepadConnected:subscribe(arg1);
			}
		end;
		subscribeToGamepadDisconnected = function(arg1) -- Line 142, Named "subscribeToGamepadDisconnected"
			--[[ Upvalues[1]:
				[1]: setmetatable_result1_upvr (readonly)
			]]
			return {
				Disconnect = setmetatable_result1_upvr.__gamepadDisconnected:subscribe(arg1);
			}
		end;
	}
	setmetatable_result1_upvr.__interface = module
	return setmetatable_result1_upvr, module
end
function module_5_upvr.__initializeGamepadState(arg1, arg2) -- Line 154
	--[[ Upvalues[2]:
		[1]: Cryo_upvr (readonly)
		[2]: tbl_upvr (readonly)
	]]
	arg1.__gamepadStates[arg2] = Cryo_upvr.List.map(tbl_upvr, function(arg1_2) -- Line 155
		local module_2 = {}
		module_2.KeyCode = arg1_2
		module_2.Delta = Vector3.new()
		module_2.Position = Vector3.new()
		module_2.UserInputType = Enum.UserInputType.Gamepad1
		module_2.UserInputState = Enum.UserInputState.End
		return module_2
	end)
end
function module_5_upvr.simulateSelectionChanged(arg1, arg2) -- Line 160
	arg1.__mockSelected = arg2
	arg1.__selectionChangedSignal:fire()
end
function module_5_upvr.simulateInput(arg1, arg2) -- Line 165
	--[[ Upvalues[3]:
		[1]: Cryo_upvr (readonly)
		[2]: tbl_upvr_2 (readonly)
		[3]: tbl_upvr_3 (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local tbl = {
		Delta = Vector3.new();
		Position = Vector3.new();
		UserInputType = Enum.UserInputType.Gamepad1;
	}
	local any_join_result1 = Cryo_upvr.Dictionary.join(tbl, arg2)
	tbl = false
	local var31 = tbl
	if typeof(any_join_result1.KeyCode) == "EnumItem" then
		if any_join_result1.KeyCode.EnumType ~= Enum.KeyCode then
			var31 = false
		else
			var31 = true
		end
	end
	assert(var31, "Invalid inputObject.KeyCode: expected a member of Enum.KeyCode")
	var31 = tbl_upvr_2[any_join_result1.UserInputType]
	assert(var31, "Invalid inputObject.UserInputType")
	local KeyCode_upvr = any_join_result1.KeyCode
	var31 = tbl_upvr_3[KeyCode_upvr]
	if var31 ~= nil and arg1.__interface.getSelection() ~= nil then
		arg1.__interface.setSelection(arg1.__interface.getSelection()[var31])
	end
	if any_join_result1.UserInputType ~= Enum.UserInputType.Keyboard then
		local UserInputType = any_join_result1.UserInputType
		if not arg1.__connectedGamepads[UserInputType] then
			arg1:connectGamepad(UserInputType)
		end
		local var34 = arg1.__gamepadStates[UserInputType]
		local any_findWhere_result1 = Cryo_upvr.List.findWhere(var34, function(arg1_3) -- Line 201
			--[[ Upvalues[1]:
				[1]: KeyCode_upvr (readonly)
			]]
			local var36
			if arg1_3.KeyCode ~= KeyCode_upvr then
				var36 = false
			else
				var36 = true
			end
			return var36
		end)
		if any_findWhere_result1 == nil then
			error("Invalid InputObject: KeyCode %s is not possible on %s":format(tostring(KeyCode_upvr), tostring(UserInputType)), 2)
		end
		for i, v in pairs(any_join_result1) do
			var34[any_findWhere_result1][i] = v
			local _
		end
	end
	arg1.__inputSignal:fire(any_join_result1)
end
function module_5_upvr.renderStep(arg1, arg2) -- Line 222
	if arg2 == nil then
	end
	arg1.__renderStepped:fire(0.03333333333333333)
end
function module_5_upvr.connectGamepad(arg1, arg2) -- Line 230
	local var42 = false
	if typeof(arg2) == "EnumItem" then
		if arg2.EnumType ~= Enum.UserInputType then
			var42 = false
		else
			var42 = true
		end
	end
	assert(var42, "Invalid argument #1: expected a member of Enum.UserInputType")
	arg1.__connectedGamepads[arg2] = true
	arg1:__initializeGamepadState(arg2)
	arg1.__gamepadConnected:fire(arg2)
end
function module_5_upvr.disconnectGamepad(arg1, arg2) -- Line 242
	local var43 = false
	if typeof(arg2) == "EnumItem" then
		if arg2.EnumType ~= Enum.UserInputType then
			var43 = false
		else
			var43 = true
		end
	end
	assert(var43, "Invalid argument #1: expected a member of Enum.UserInputType")
	arg1.__connectedGamepads[arg2] = nil
	arg1.__gamepadDisconnected:fire(arg2)
end
return module_5_upvr