-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:14:31
-- Luau version 6, Types version 3
-- Time taken: 0.004615 seconds

local Parent = script.Parent.Parent.Parent.Parent
local tbl_upvr = {
	VRService = game:GetService("VRService");
	UpdateEvent = game:GetService("RunService").Heartbeat;
}
local function setLaserPointerModeBasedOnUserCFrame_upvr(arg1, arg2) -- Line 47, Named "setLaserPointerModeBasedOnUserCFrame"
	if arg2:GetUserCFrameEnabled(Enum.UserCFrame.RightHand) and arg2:GetUserCFrameEnabled(Enum.UserCFrame.LeftHand) then
		arg1.current:setMode(arg1.current.Mode.DualPointer)
	else
		if not arg2:GetUserCFrameEnabled(Enum.UserCFrame.RightHand) and not arg2:GetUserCFrameEnabled(Enum.UserCFrame.LeftHand) then
			arg1.current:setMode(arg1.current.Mode.Disabled)
			return
		end
		arg1.current:setMode(arg1.current.Mode.Pointer)
	end
end
local Object_upvr = require(Parent.LuauPolyfill).Object
local React_upvr = require(Parent.React)
local UIBloxConfig_upvr = require(Parent.UIBlox.UIBloxConfig)
local ContextActionService_upvr = game:GetService("ContextActionService")
local Roact_upvr = require(Parent.Roact)
local EventConnection_upvr = require(Parent.ReactUtils).EventConnection
return function(arg1) -- Line 63, Named "PointerOverlay"
	--[[ Upvalues[8]:
		[1]: Object_upvr (readonly)
		[2]: tbl_upvr (readonly)
		[3]: React_upvr (readonly)
		[4]: UIBloxConfig_upvr (readonly)
		[5]: setLaserPointerModeBasedOnUserCFrame_upvr (readonly)
		[6]: ContextActionService_upvr (readonly)
		[7]: Roact_upvr (readonly)
		[8]: EventConnection_upvr (readonly)
	]]
	local any_assign_result1 = Object_upvr.assign({}, tbl_upvr, arg1)
	local LaserPointer_upvr = any_assign_result1.LaserPointer
	local VRControllerModel_upvr = any_assign_result1.VRControllerModel
	local VRService_upvr = any_assign_result1.VRService
	local any_useRef_result1_upvr_2 = React_upvr.useRef(nil)
	local any_useRef_result1_upvr_3 = React_upvr.useRef(nil)
	local any_useRef_result1_upvr = React_upvr.useRef(nil)
	local pcall_result1, pcall_result2 = pcall(function() -- Line 76
		--[[ Upvalues[1]:
			[1]: VRService_upvr (readonly)
		]]
		return VRService_upvr:GetPropertyChangedSignal("VRSessionState")
	end)
	local any_useCallback_result1_upvr = React_upvr.useCallback(function() -- Line 80
		--[[ Upvalues[9]:
			[1]: any_useRef_result1_upvr_2 (readonly)
			[2]: LaserPointer_upvr (readonly)
			[3]: UIBloxConfig_upvr (copied, readonly)
			[4]: setLaserPointerModeBasedOnUserCFrame_upvr (copied, readonly)
			[5]: VRService_upvr (readonly)
			[6]: any_useRef_result1_upvr_3 (readonly)
			[7]: VRControllerModel_upvr (readonly)
			[8]: any_useRef_result1_upvr (readonly)
			[9]: ContextActionService_upvr (copied, readonly)
		]]
		if not any_useRef_result1_upvr_2.current then
			any_useRef_result1_upvr_2.current = LaserPointer_upvr.new()
			if UIBloxConfig_upvr.enableBetterLaserPointerMode then
				setLaserPointerModeBasedOnUserCFrame_upvr(any_useRef_result1_upvr_2, VRService_upvr)
			else
				any_useRef_result1_upvr_2.current:setMode(any_useRef_result1_upvr_2.current.Mode.DualPointer)
			end
			any_useRef_result1_upvr_2.current:setEnableAmbidexterousPointer(true)
			any_useRef_result1_upvr_3.current = VRControllerModel_upvr.new(Enum.UserCFrame.LeftHand)
			any_useRef_result1_upvr.current = VRControllerModel_upvr.new(Enum.UserCFrame.RightHand)
		end
		any_useRef_result1_upvr_3.current:setEnabled(VRService_upvr.VREnabled)
		any_useRef_result1_upvr.current:setEnabled(VRService_upvr.VREnabled)
		if VRService_upvr.VREnabled then
			ContextActionService_upvr:BindActivate(Enum.UserInputType.Gamepad1, Enum.KeyCode.ButtonA, Enum.KeyCode.ButtonX, Enum.KeyCode.ButtonR2, Enum.KeyCode.ButtonL2)
		end
	end, {any_useRef_result1_upvr_3, any_useRef_result1_upvr, any_useRef_result1_upvr_2, LaserPointer_upvr, VRControllerModel_upvr})
	local any_useCallback_result1_upvw = React_upvr.useCallback(function() -- Line 107
		--[[ Upvalues[5]:
			[1]: any_useRef_result1_upvr_3 (readonly)
			[2]: any_useRef_result1_upvr (readonly)
			[3]: any_useRef_result1_upvr_2 (readonly)
			[4]: UIBloxConfig_upvr (copied, readonly)
			[5]: ContextActionService_upvr (copied, readonly)
		]]
		if any_useRef_result1_upvr_3.current then
			any_useRef_result1_upvr_3.current:setEnabled(false)
		end
		if any_useRef_result1_upvr.current then
			any_useRef_result1_upvr.current:setEnabled(false)
		end
		if any_useRef_result1_upvr_2.current then
			if UIBloxConfig_upvr.fixLaserPointerDisable then
				any_useRef_result1_upvr_2.current:disableComponent()
			else
				any_useRef_result1_upvr_2.current:setMode(any_useRef_result1_upvr_2.current.Mode.Disabled)
			end
		end
		ContextActionService_upvr:UnbindActivate(Enum.UserInputType.Gamepad1, Enum.KeyCode.ButtonA)
		ContextActionService_upvr:UnbindActivate(Enum.UserInputType.Gamepad1, Enum.KeyCode.ButtonR2)
	end, {any_useRef_result1_upvr_3, any_useRef_result1_upvr, any_useRef_result1_upvr_2, LaserPointer_upvr, VRControllerModel_upvr})
	React_upvr.useEffect(function() -- Line 154
		--[[ Upvalues[3]:
			[1]: VRService_upvr (readonly)
			[2]: any_useCallback_result1_upvr (readonly)
			[3]: any_useCallback_result1_upvw (read and write)
		]]
		if VRService_upvr.VREnabled then
			any_useCallback_result1_upvr()
		end
		return any_useCallback_result1_upvw
	end, {})
	local module = {
		UserCFrameChangedConnection = React_upvr.createElement(EventConnection_upvr, {
			event = any_assign_result1.UpdateEvent;
			callback = function() -- Line 166, Named "callback"
				--[[ Upvalues[3]:
					[1]: any_useRef_result1_upvr_2 (readonly)
					[2]: any_useRef_result1_upvr_3 (readonly)
					[3]: any_useRef_result1_upvr (readonly)
				]]
				if any_useRef_result1_upvr_2.current then
					any_useRef_result1_upvr_2.current:update()
				end
				if any_useRef_result1_upvr_3.current then
					any_useRef_result1_upvr_3.current:update()
				end
				if any_useRef_result1_upvr.current then
					any_useRef_result1_upvr.current:update()
				end
			end;
		});
	}
	local any_createElement_result1 = React_upvr.createElement(EventConnection_upvr, {
		event = VRService_upvr:GetPropertyChangedSignal("VREnabled");
		callback = any_useCallback_result1_upvr;
	})
	module.VREnabledConnection = any_createElement_result1
	if UIBloxConfig_upvr.enableBetterLaserPointerMode then
		any_createElement_result1 = React_upvr.createElement
		any_createElement_result1 = any_createElement_result1(EventConnection_upvr, {
			event = VRService_upvr.UserCFrameEnabled;
			callback = React_upvr.useCallback(function() -- Line 149
				--[[ Upvalues[3]:
					[1]: setLaserPointerModeBasedOnUserCFrame_upvr (copied, readonly)
					[2]: any_useRef_result1_upvr_2 (readonly)
					[3]: VRService_upvr (readonly)
				]]
				setLaserPointerModeBasedOnUserCFrame_upvr(any_useRef_result1_upvr_2, VRService_upvr)
			end, {any_useRef_result1_upvr_2});
		})
	else
		any_createElement_result1 = nil
	end
	module.VRUserCFrameEnabledConnection = any_createElement_result1
	if pcall_result1 then
		any_createElement_result1 = React_upvr.createElement
		any_createElement_result1 = any_createElement_result1(EventConnection_upvr, {
			event = pcall_result2;
			callback = React_upvr.useCallback(function() -- Line 125
				--[[ Upvalues[6]:
					[1]: VRService_upvr (readonly)
					[2]: any_useRef_result1_upvr_2 (readonly)
					[3]: UIBloxConfig_upvr (copied, readonly)
					[4]: setLaserPointerModeBasedOnUserCFrame_upvr (copied, readonly)
					[5]: any_useRef_result1_upvr_3 (readonly)
					[6]: any_useRef_result1_upvr (readonly)
				]]
				local var26 = true
				if VRService_upvr.VRSessionState ~= Enum.VRSessionState.Idle then
					if VRService_upvr.VRSessionState ~= Enum.VRSessionState.Visible then
						var26 = false
					else
						var26 = true
					end
				end
				local var27 = not var26
				if any_useRef_result1_upvr_2.current then
					if var27 then
						if UIBloxConfig_upvr.enableBetterLaserPointerMode then
							setLaserPointerModeBasedOnUserCFrame_upvr(any_useRef_result1_upvr_2, VRService_upvr)
						else
							any_useRef_result1_upvr_2.current:setMode(any_useRef_result1_upvr_2.current.Mode.DualPointer)
						end
					else
						any_useRef_result1_upvr_2.current:setMode(any_useRef_result1_upvr_2.current.Mode.Disabled)
					end
				end
				if any_useRef_result1_upvr_3.current then
					any_useRef_result1_upvr_3.current:setEnabled(var27)
				end
				if any_useRef_result1_upvr.current then
					any_useRef_result1_upvr.current:setEnabled(var27)
				end
			end, {any_useRef_result1_upvr_3, any_useRef_result1_upvr, any_useRef_result1_upvr_2, LaserPointer_upvr, VRControllerModel_upvr});
		})
	else
		any_createElement_result1 = nil
	end
	module.VRSessionStateConnection = any_createElement_result1
	return React_upvr.createElement(Roact_upvr.Portal, {
		target = workspace;
	}, module)
end