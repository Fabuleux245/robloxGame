-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:37:09
-- Luau version 6, Types version 3
-- Time taken: 0.004092 seconds

local VRService_upvr = game:GetService("VRService")
local Players = game:GetService("Players")
local VrCommon = script:FindFirstAncestor("VrCommon")
local VRUtil_upvr = require(VrCommon.VRUtil)
while not Players.LocalPlayer do
	Players.Changed:wait()
end
local module_upvr = {}
module_upvr.__index = module_upvr
function module_upvr.new(arg1) -- Line 23
	--[[ Upvalues[2]:
		[1]: module_upvr (readonly)
		[2]: VRService_upvr (readonly)
	]]
	local setmetatable_result1 = setmetatable({}, module_upvr)
	setmetatable_result1.userCFrame = arg1
	setmetatable_result1.enabled = false
	setmetatable_result1.currentModel = nil
	setmetatable_result1.currentVRDeviceName = VRService_upvr.VRDeviceName
	setmetatable_result1.modelIsInWorkspace = false
	setmetatable_result1.onVRDeviceChangedConn = nil
	setmetatable_result1.onCurrentCameraChangedConn = nil
	setmetatable_result1.onUserCFrameEnabledChangedConn = nil
	setmetatable_result1.onInputBeganConn = nil
	setmetatable_result1.onInputChangedConn = nil
	setmetatable_result1.onInputEndedConn = nil
	setmetatable_result1.controllerModel = nil
	return setmetatable_result1
end
local ViveController_upvr = require(VrCommon.Controllers.ViveController)
local RiftController_upvr = require(VrCommon.Controllers.RiftController)
local IndexController_upvr = require(VrCommon.Controllers.IndexController)
local TouchController_upvr = require(VrCommon.Controllers.TouchController)
function module_upvr.createControllerModel(arg1) -- Line 45
	--[[ Upvalues[5]:
		[1]: VRUtil_upvr (readonly)
		[2]: ViveController_upvr (readonly)
		[3]: RiftController_upvr (readonly)
		[4]: IndexController_upvr (readonly)
		[5]: TouchController_upvr (readonly)
	]]
	local any_getCurrentControllerType_result1 = VRUtil_upvr.getCurrentControllerType()
	if any_getCurrentControllerType_result1 == "Vive" then
		arg1.controllerModel = ViveController_upvr.new(arg1.userCFrame)
	else
		if any_getCurrentControllerType_result1 == "Rift" then
			arg1.controllerModel = RiftController_upvr.new(arg1.userCFrame)
			return
		end
		if any_getCurrentControllerType_result1 == "Index" then
			arg1.controllerModel = IndexController_upvr.new(arg1.userCFrame)
			return
		end
		if any_getCurrentControllerType_result1 == "Touch" then
			arg1.controllerModel = TouchController_upvr.new(arg1.userCFrame)
			return
		end
		arg1.controllerModel = RiftController_upvr.new(arg1.userCFrame)
	end
end
function module_upvr.setCurrentModel(arg1) -- Line 62
	--[[ Upvalues[1]:
		[1]: VRService_upvr (readonly)
	]]
	if arg1.currentModel then
		arg1:setModelInWorkspace(false)
	end
	if not arg1.controllerModel then
		arg1:createControllerModel()
	end
	arg1.currentModel = arg1.controllerModel
	if arg1.enabled then
		arg1:setModelInWorkspace(VRService_upvr:GetUserCFrameEnabled(arg1.userCFrame))
	end
end
function module_upvr.setModelInWorkspace(arg1, arg2) -- Line 79
	if not arg1.currentModel then
	elseif arg2 ~= arg1.modelIsInWorkspace then
		arg1.modelIsInWorkspace = arg2
		if arg1.currentModel.model then
			if arg1.modelIsInWorkspace then
				arg1.currentModel.model.Parent = workspace
			else
				arg1.currentModel.model.Parent = nil
			end
		end
		arg1.currentModel:setInWorkspace(arg2)
	end
end
local UserInputService_upvr = game:GetService("UserInputService")
function module_upvr.setEnabled(arg1, arg2) -- Line 98
	--[[ Upvalues[2]:
		[1]: VRService_upvr (readonly)
		[2]: UserInputService_upvr (readonly)
	]]
	if arg2 ~= arg1.enabled then
		arg1.enabled = arg2
		if arg1.enabled then
			arg1:setCurrentModel()
			arg1.onCurrentCameraChangedConn = workspace:GetPropertyChangedSignal("CurrentCamera"):Connect(function() -- Line 105
				--[[ Upvalues[2]:
					[1]: arg1 (readonly)
					[2]: VRService_upvr (copied, readonly)
				]]
				arg1:setModelInWorkspace(VRService_upvr:GetUserCFrameEnabled(arg1.userCFrame))
			end)
			arg1.onUserCFrameEnabledChangedConn = VRService_upvr.UserCFrameEnabled:connect(function(arg1_2, arg2_2) -- Line 109
				--[[ Upvalues[1]:
					[1]: arg1 (readonly)
				]]
				if arg1_2 == arg1.userCFrame then
					arg1:setModelInWorkspace(arg2_2)
				end
			end)
			arg1.onInputBeganConn = UserInputService_upvr.InputBegan:connect(function(...) -- Line 115
				--[[ Upvalues[1]:
					[1]: arg1 (readonly)
				]]
				arg1:onInputBegan(...)
			end)
			arg1.onInputChangedConn = UserInputService_upvr.InputChanged:connect(function(...) -- Line 118
				--[[ Upvalues[1]:
					[1]: arg1 (readonly)
				]]
				arg1:onInputChanged(...)
			end)
			arg1.onInputEndedConn = UserInputService_upvr.InputEnded:connect(function(...) -- Line 121
				--[[ Upvalues[1]:
					[1]: arg1 (readonly)
				]]
				arg1:onInputEnded(...)
			end)
			arg1:setModelInWorkspace(VRService_upvr:GetUserCFrameEnabled(arg1.userCFrame))
			return
		end
		if arg1.onVRDeviceChangedConn then
			arg1.onVRDeviceChangedConn:disconnect()
			arg1.onVRDeviceChangedConn = nil
		end
		if arg1.onCurrentCameraChangedConn then
			arg1.onCurrentCameraChangedConn:disconnect()
			arg1.onCurrentCameraChangedConn = nil
		end
		if arg1.onUserCFrameEnabledChangedConn then
			arg1.onUserCFrameEnabledChangedConn:disconnect()
			arg1.onUserCFrameEnabledChangedConn = nil
		end
		if arg1.onInputBeganConn then
			arg1.onInputBeganConn:disconnect()
			arg1.onInputBeganConn = nil
		end
		if arg1.onInputChangedConn then
			arg1.onInputChangedConn:disconnect()
			arg1.onInputChangedConn = nil
		end
		if arg1.onInputEndedConn then
			arg1.onInputEndedConn:disconnect()
			arg1.onInputEndedConn = nil
		end
		if arg1.currentModel then
			arg1:setModelInWorkspace(false)
		end
	end
end
function module_upvr.update(arg1, arg2) -- Line 162
	--[[ Upvalues[1]:
		[1]: VRUtil_upvr (readonly)
	]]
	if not arg1.enabled then
	elseif arg1.currentModel then
		arg1.currentModel:setCFrameAndScale(VRUtil_upvr.GetUserCFrameWorldSpace(arg1.userCFrame), workspace.CurrentCamera.HeadScale)
	end
end
function module_upvr.onInputBegan(arg1, arg2, arg3) -- Line 173
	if not arg1.enabled or not arg1.modelIsInWorkspace then
	elseif arg1.currentModel then
		arg1.currentModel:onInputBegan(arg2)
	end
end
function module_upvr.onInputChanged(arg1, arg2, arg3) -- Line 182
	if not arg1.enabled or not arg1.modelIsInWorkspace then
	elseif arg1.currentModel then
		arg1.currentModel:onInputChanged(arg2)
	end
end
function module_upvr.onInputEnded(arg1, arg2, arg3) -- Line 191
	if arg1.currentModel then
		arg1.currentModel:onInputEnded(arg2)
	end
end
function module_upvr.getButtonPosition(arg1, arg2) -- Line 197
	if arg1.currentModel then
		if arg1.currentModel.getButtonPart then
			local any_getButtonPart_result1 = arg1.currentModel:getButtonPart(arg2)
			if any_getButtonPart_result1 then
				return any_getButtonPart_result1.Position
			end
		end
	end
end
return module_upvr