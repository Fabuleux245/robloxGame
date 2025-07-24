-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:02:13
-- Luau version 6, Types version 3
-- Time taken: 0.013057 seconds

local VRService_upvr = game:GetService("VRService")
local VRHub_upvr = require(game:GetService("CoreGui").RobloxGui.Modules.VR.VRHub)
local Parent = script.Parent
local Constants_upvr = require(Parent.Constants)
local PanelType_upvr = Constants_upvr.PanelType
local SpatialUIType_upvr = Constants_upvr.SpatialUIType
local function _(arg1) -- Line 54, Named "getZAxisStablizedCFrame"
	local any_ToOrientation_result1_3, any_ToOrientation_result2_2, _ = arg1:ToOrientation()
	return CFrame.new(arg1.Position) * CFrame.fromOrientation(any_ToOrientation_result1_3, any_ToOrientation_result2_2, 0)
end
local function _(arg1) -- Line 59, Named "getCameraOffsetFromHeadRotationWithZAxisStabl"
	--[[ Upvalues[1]:
		[1]: VRService_upvr (readonly)
	]]
	local CFrame = workspace.CurrentCamera.CFrame
	local any_ToWorldSpace_result1_2 = CFrame * VRService_upvr:GetUserCFrame(Enum.UserCFrame.Head):ToWorldSpace(arg1)
	local any_ToOrientation_result1_4, any_ToOrientation_result2_3, _ = any_ToWorldSpace_result1_2:ToOrientation()
	return CFrame:ToObjectSpace(CFrame.new(any_ToWorldSpace_result1_2.Position) * CFrame.fromOrientation(any_ToOrientation_result1_4, any_ToOrientation_result2_3, 0))
end
local function _(arg1) -- Line 68, Named "getPanelPart"
	--[[ Upvalues[1]:
		[1]: SpatialUIType_upvr (readonly)
	]]
	if arg1.uiType == SpatialUIType_upvr.SpatialUI or arg1.uiType == SpatialUIType_upvr.SpatialUIRoact then
		return arg1.panelObject.Adornee
	end
	if arg1.uiType == SpatialUIType_upvr.SpatialUIPartOnly then
		return arg1.panelObject
	end
	return nil
end
local function _(arg1) -- Line 79, Named "panelExistsInSpace"
	--[[ Upvalues[1]:
		[1]: SpatialUIType_upvr (readonly)
	]]
	local var16 = false
	if arg1 ~= nil then
		var16 = false
		if arg1.panelObject ~= nil then
			if arg1.uiType == SpatialUIType_upvr.ScreenUI then
				var16 = false
			else
				var16 = true
			end
		end
	end
	return var16
end
local module_upvr = {}
module_upvr.__index = module_upvr
function module_upvr.removeRoactPanel(arg1, arg2) -- Line 99
	arg1.uiElements[arg2] = nil
end
function module_upvr.registerRoactPanel(arg1, arg2, arg3) -- Line 103
	arg1.uiElements[arg2] = arg3
	arg1:rescaleUIForCurrentHeadScale()
	arg1:updateUIGroupsForCurHeadCFrame()
end
local createCompatPanel_upvr = require(script.Parent.createCompatPanel)
function module_upvr.createUI(arg1, arg2) -- Line 115
	--[[ Upvalues[1]:
		[1]: createCompatPanel_upvr (readonly)
	]]
	local createCompatPanel_upvr_result1 = createCompatPanel_upvr(arg2)
	if createCompatPanel_upvr_result1 == nil then
		return nil
	end
	arg1.uiElements[arg2.panelType] = createCompatPanel_upvr_result1
	arg1:updatePanelForCurHeadCFrame(arg2.panelType)
	return {
		type = createCompatPanel_upvr_result1.uiType;
		panelObject = createCompatPanel_upvr_result1.panelObject;
	}
end
function module_upvr.updateUIGroupForCurHeadCFrame(arg1, arg2, arg3) -- Line 128
	--[[ Upvalues[1]:
		[1]: VRService_upvr (readonly)
	]]
	local var21 = arg1.uiGroups[arg2]
	local CFrame_3 = workspace.CurrentCamera.CFrame
	local any_ToWorldSpace_result1 = CFrame_3 * VRService_upvr:GetUserCFrame(Enum.UserCFrame.Head):ToWorldSpace(var21.positionProps.uiGroupHeadRotation)
	local any_ToOrientation_result1_5, any_ToOrientation_result2, _ = any_ToWorldSpace_result1:ToOrientation()
	local any_ToObjectSpace_result1 = CFrame_3:ToObjectSpace(CFrame.new(any_ToWorldSpace_result1.Position) * CFrame.fromOrientation(any_ToOrientation_result1_5, any_ToOrientation_result2, 0))
	var21.positionProps.uiGroupCameraOffSet = any_ToObjectSpace_result1
	if var21.draggable and var21.dragBar and not (arg3 or false) then
		var21.dragBar:setCFrame(workspace.CurrentCamera.CFrame * any_ToObjectSpace_result1:ToWorldSpace(var21.dragBarOffset))
	end
	arg1:updatePanelsInUIGroupForCurHeadCFrame(arg2)
end
function module_upvr.updateUIGroupsForCurHeadCFrame(arg1) -- Line 149
	for i, _ in pairs(arg1.uiGroups) do
		arg1:updateUIGroupForCurHeadCFrame(i)
	end
end
function module_upvr.updatePanelForCurHeadCFrame(arg1, arg2) -- Line 155
	--[[ Upvalues[2]:
		[1]: SpatialUIType_upvr (readonly)
		[2]: VRService_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	local var33 = arg1.uiElements[arg2]
	local var34
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [6] 5. Error Block 2 start (CF ANALYSIS FAILED)
	var34 = false
	-- KONSTANTERROR: [6] 5. Error Block 2 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [11] 8. Error Block 29 start (CF ANALYSIS FAILED)
	if var33.uiType == SpatialUIType_upvr.ScreenUI then
		var34 = false
	else
		var34 = true
	end
	-- KONSTANTERROR: [11] 8. Error Block 29 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [20] 14. Error Block 6 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [20] 14. Error Block 6 end (CF ANALYSIS FAILED)
end
function module_upvr.updatePanelsInUIGroupForCurHeadCFrame(arg1, arg2) -- Line 177
	for i_2, v_2 in pairs(arg1.uiElements) do
		if v_2.panelPositionProps and v_2.panelPositionProps.uiGroup == arg2 then
			arg1:updatePanelForCurHeadCFrame(i_2)
		end
	end
end
function module_upvr.updatePanelsForCurHeadCFrame(arg1) -- Line 191
	for i_3, _ in pairs(arg1.uiElements) do
		arg1:updatePanelForCurHeadCFrame(i_3)
	end
end
function module_upvr.dragUiGroupStart(arg1, arg2) -- Line 197
	if arg1.uiGroups[arg2].draggable == false then
	else
		local dragBar_2 = arg1.uiGroups[arg2].dragBar
		dragBar_2:startDrag(dragBar_2:getCFrame():ToObjectSpace(workspace.CurrentCamera.CFrame:ToWorldSpace(arg1.uiGroups[arg2].positionProps.uiGroupCameraOffSet)))
	end
end
function module_upvr.dragUiGroupEnd(arg1, arg2) -- Line 209
	if arg1.uiGroups[arg2].draggable == false then
	else
		arg1.uiGroups[arg2].dragBar:dragEnd()
	end
end
function module_upvr.dragUiGroupStep(arg1, arg2) -- Line 217
	--[[ Upvalues[1]:
		[1]: VRService_upvr (readonly)
	]]
	if arg1.uiGroups[arg2].draggable == false then
	else
		local dragBar = arg1.uiGroups[arg2].dragBar
		local var47 = workspace.CurrentCamera.CFrame * VRService_upvr:GetUserCFrame(Enum.UserCFrame.Head)
		local any_getCFrame_result1 = dragBar:getCFrame()
		local any_ToEulerAnglesXYZ_result1, any_ToEulerAnglesXYZ_result2, _ = CFrame.lookAt(any_getCFrame_result1.Position, Vector3.new(var47.Position.X, var47.Position.Y - 0.6666666666666667, var47.Position.Z)) * CFrame.Angles(0, math.pi, 0):ToEulerAnglesXYZ()
		local _, _, any_ToEulerAnglesXYZ_result3 = any_getCFrame_result1:ToEulerAnglesXYZ()
		local var55 = CFrame.new(any_getCFrame_result1.Position) * CFrame.Angles(any_ToEulerAnglesXYZ_result1, any_ToEulerAnglesXYZ_result2, any_ToEulerAnglesXYZ_result3)
		local any_ToOrientation_result1_2, any_ToOrientation_result2_4, _ = var55:ToOrientation()
		dragBar:setCFrame(CFrame.new(var55.Position) * CFrame.fromOrientation(any_ToOrientation_result1_2, any_ToOrientation_result2_4, 0))
		arg1.uiGroups[arg2].positionProps.uiGroupHeadRotation = var47:ToObjectSpace(dragBar:getCFrame():ToWorldSpace(dragBar.uiGroupOffSet))
		arg1:updateUIGroupForCurHeadCFrame(arg2, true)
	end
end
local createUIGroupDragBar_upvr = require(script.Parent.createUIGroupDragBar)
local var60_upvr = CFrame.new(-0.46666666666666673, -0.8, -2.1333333333333333) * CFrame.Angles(-0.3141592653589793, 0.17453292519943295, 0)
local vector2_upvr = Vector2.new(2.666666666666667, 1.866666666666667)
function module_upvr.setUpUiGroups(arg1) -- Line 249
	--[[ Upvalues[6]:
		[1]: createUIGroupDragBar_upvr (readonly)
		[2]: Constants_upvr (readonly)
		[3]: var60_upvr (readonly)
		[4]: VRService_upvr (readonly)
		[5]: vector2_upvr (readonly)
		[6]: PanelType_upvr (readonly)
	]]
	local tbl_2 = {}
	local tbl = {
		uiGroupHeadRotation = var60_upvr;
	}
	local CFrame_2 = workspace.CurrentCamera.CFrame
	local any_ToWorldSpace_result1_3 = CFrame_2 * VRService_upvr:GetUserCFrame(Enum.UserCFrame.Head):ToWorldSpace(var60_upvr)
	local any_ToOrientation_result1, any_ToOrientation_result2_5, _ = any_ToWorldSpace_result1_3:ToOrientation()
	tbl.uiGroupCameraOffSet = CFrame_2:ToObjectSpace(CFrame.new(any_ToWorldSpace_result1_3.Position) * CFrame.fromOrientation(any_ToOrientation_result1, any_ToOrientation_result2_5, 0))
	tbl.defaultGroupHeadRotation = var60_upvr
	tbl_2.positionProps = tbl
	tbl_2.uiContainerSize = vector2_upvr
	tbl_2.draggable = true
	tbl_2.dragBar = createUIGroupDragBar_upvr({
		name = "MainUIGroup";
		dragFunction = function(arg1_2, arg2, arg3, arg4, arg5) -- Line 253, Named "dragFunction"
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: Constants_upvr (copied, readonly)
			]]
			arg1:dragUiGroupStep(Constants_upvr.SpatialUIGroupType.MainUIGroup)
		end;
		dragStartFunction = function(arg1_3, arg2, arg3, arg4, arg5, arg6, arg7) -- Line 256, Named "dragStartFunction"
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: Constants_upvr (copied, readonly)
			]]
			arg1:dragUiGroupStart(Constants_upvr.SpatialUIGroupType.MainUIGroup)
		end;
		dragEndFunction = function(arg1_4) -- Line 259, Named "dragEndFunction"
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: Constants_upvr (copied, readonly)
			]]
			arg1:dragUiGroupEnd(Constants_upvr.SpatialUIGroupType.MainUIGroup)
		end;
	})
	tbl_2.dragBarOffset = CFrame.new(0, Constants_upvr.ROACT_PANEL_UIGROUP_ELEMENT_OFFSET_MAP[PanelType_upvr.BottomBar].Y - 0.075 - 0.06666666666666667, 0)
	tbl_2.headScale = 1
	arg1.uiGroups[Constants_upvr.SpatialUIGroupType.MainUIGroup] = tbl_2
end
local game_DefineFastInt_result1_upvr = game:DefineFastInt("FIntUIResetDelayInSec", 3)
function module_upvr.step(arg1) -- Line 284
	--[[ Upvalues[4]:
		[1]: VRService_upvr (readonly)
		[2]: SpatialUIType_upvr (readonly)
		[3]: PanelType_upvr (readonly)
		[4]: game_DefineFastInt_result1_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 28 start (CF ANALYSIS FAILED)
	if not VRService_upvr.VREnabled then return end
	local pairs_result1_5, pairs_result2_13, pairs_result3_3 = pairs(arg1.uiElements)
	-- KONSTANTERROR: [0] 1. Error Block 28 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [114] 77. Error Block 25 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [114] 77. Error Block 25 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [11] 9. Error Block 43 start (CF ANALYSIS FAILED)
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [114.5]
	if nil ~= nil then
		-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [114.7]
		if nil ~= nil then
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [114.8]
			if nil == nil then
			else
			end
		end
	end
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [114.6]
	if nil then
		-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [114.4]
		if nil == nil then
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			if nil == nil then
			else
			end
			-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [114.16]
			-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [114.15]
			local function INLINED_2() -- Internal function, doesn't exist in bytecode
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect
				return nil < nil
			end
			if nil < nil or INLINED_2() then
				if nil then
					-- KONSTANTERROR: Expression was reused, decompilation is incorrect
					if nil <= nil then
						-- KONSTANTWARNING: GOTO [114] #77
					end
				else
				end
			else
			end
		end
	end
	-- KONSTANTERROR: [11] 9. Error Block 43 end (CF ANALYSIS FAILED)
end
function module_upvr.onShowTopBarChanged(arg1) -- Line 323
	--[[ Upvalues[3]:
		[1]: VRService_upvr (readonly)
		[2]: VRHub_upvr (readonly)
		[3]: SpatialUIType_upvr (readonly)
	]]
	if not VRService_upvr.VREnabled then
	else
		if VRHub_upvr.ShowTopBar then
			for _, v_8 in pairs(arg1.uiGroups) do
				if v_8.draggable and v_8.dragBar then
					v_8.dragBar:show()
				end
			end
			for _, v_9 in pairs(arg1.uiElements) do
				if v_9.uiType == SpatialUIType_upvr.SpatialUI or v_9.uiType == SpatialUIType_upvr.SpatialUIRoact then
					local panelObject_2 = v_9.panelObject
					panelObject_2.Enabled = true
					panelObject_2.Adornee.Parent = workspace
				elseif v_9.uiType == SpatialUIType_upvr.SpatialUIPartOnly then
					v_9.panelObject.Parent = workspace
				end
			end
			return
		end
		for _, v_10 in pairs(arg1.uiGroups) do
			if v_10.draggable and v_10.dragBar then
				v_10.dragBar:hide()
			end
		end
		for _, v_11 in pairs(arg1.uiElements) do
			if v_11.uiType == SpatialUIType_upvr.SpatialUI or v_11.uiType == SpatialUIType_upvr.SpatialUIRoact then
				local panelObject = v_11.panelObject
				panelObject.Enabled = false
				panelObject.Adornee.Parent = nil
			elseif v_11.uiType == SpatialUIType_upvr.SpatialUIPartOnly then
				v_11.panelObject.Parent = nil
			end
		end
	end
end
function module_upvr.updateUIGroupsForCurCamera(arg1) -- Line 364
	--[[ Upvalues[2]:
		[1]: VRService_upvr (readonly)
		[2]: SpatialUIType_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 33 start (CF ANALYSIS FAILED)
	if not VRService_upvr.VREnabled then return end
	for _, v_4 in pairs(arg1.uiGroups) do
		if v_4.draggable then
			v_4.dragBar:setCFrame(workspace.CurrentCamera.CFrame * v_4.positionProps.uiGroupCameraOffSet:ToWorldSpace(v_4.dragBarOffset))
		end
	end
	local pairs_result1_3, pairs_result2_11, pairs_result3_6 = pairs(arg1.uiElements)
	-- KONSTANTERROR: [0] 1. Error Block 33 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [130] 81. Error Block 28 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [130] 81. Error Block 28 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [43] 28. Error Block 8 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [43] 28. Error Block 8 end (CF ANALYSIS FAILED)
end
function module_upvr.onMouseTargetChanged(arg1, arg2) -- Line 400
	for _, v_5 in pairs(arg1.uiGroups) do
		if not v_5.draggable then
		elseif v_5.dragBar and v_5.dragBar.part == arg2 then
			v_5.dragBar:startHover()
		elseif v_5.dragBar and v_5.dragBar.part ~= arg2 then
			v_5.dragBar:hoverEnd()
		end
	end
end
local Utils_upvr = require(Parent.Utils)
function module_upvr.rescaleUIForCurrentHeadScale(arg1) -- Line 412
	--[[ Upvalues[2]:
		[1]: Utils_upvr (readonly)
		[2]: SpatialUIType_upvr (readonly)
	]]
	local HeadScale = workspace.CurrentCamera.HeadScale
	for _, v_6 in pairs(arg1.uiGroups) do
		local var141 = HeadScale / v_6.headScale
		v_6.positionProps.uiGroupHeadRotation = Utils_upvr.rescaleCFramePosition(v_6.positionProps.uiGroupHeadRotation, var141)
		v_6.positionProps.uiGroupCameraOffSet = Utils_upvr.rescaleCFramePosition(v_6.positionProps.uiGroupCameraOffSet, var141)
		v_6.positionProps.defaultGroupHeadRotation = Utils_upvr.rescaleCFramePosition(v_6.positionProps.defaultGroupHeadRotation, var141)
		if v_6.draggable then
			v_6.dragBarOffset = Utils_upvr.rescaleCFramePosition(v_6.dragBarOffset, var141)
			v_6.dragBar:rescale(var141)
		end
		v_6.headScale = HeadScale
	end
	for _, v_7 in pairs(arg1.uiElements) do
		local uiType = v_7.uiType
		if uiType ~= SpatialUIType_upvr.SpatialUIRoact then
			if v_7.uiType == SpatialUIType_upvr.SpatialUI or v_7.uiType == SpatialUIType_upvr.SpatialUIRoact then
				uiType = v_7.panelObject.Adornee
			elseif v_7.uiType == SpatialUIType_upvr.SpatialUIPartOnly then
				uiType = v_7.panelObject
			else
				uiType = nil
			end
			if uiType ~= nil then
				uiType.Size *= HeadScale / v_7.headScale
			end
		end
		uiType = v_7.panelPositionProps
		if uiType and uiType.cameraFixedPanelProp then
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			uiType.cameraFixedPanelProp.uiGroupElementOffset = Utils_upvr.rescaleCFramePosition(uiType.cameraFixedPanelProp.uiGroupElementOffset, HeadScale / v_7.headScale)
		end
		v_7.headScale = HeadScale
	end
end
local game_DefineFastFlag_result1_upvr = game:DefineFastFlag("FixHeadSacleAdjustment", false)
local RunService_upvr = game:GetService("RunService")
local Players_upvr = game:GetService("Players")
function module_upvr.new() -- Line 452
	--[[ Upvalues[5]:
		[1]: module_upvr (readonly)
		[2]: game_DefineFastFlag_result1_upvr (readonly)
		[3]: RunService_upvr (readonly)
		[4]: VRHub_upvr (readonly)
		[5]: Players_upvr (readonly)
	]]
	local module_upvr_2 = {
		currentMouseTarget = nil;
		uiGroupsOutOfViewTimeStamp = nil;
		uiElements = {};
		uiGroups = {};
	}
	setmetatable(module_upvr_2, module_upvr)
	module_upvr_2:setUpUiGroups()
	module_upvr_2:rescaleUIForCurrentHeadScale()
	if game_DefineFastFlag_result1_upvr then
		module_upvr_2:updateUIGroupsForCurCamera()
	else
		module_upvr_2:updateUIGroupsForCurHeadCFrame()
	end
	RunService_upvr:BindToRenderStep("UIManagerRenderStep", Enum.RenderPriority.Last.Value, function() -- Line 471
		--[[ Upvalues[1]:
			[1]: module_upvr_2 (readonly)
		]]
		module_upvr_2:step()
	end)
	VRHub_upvr.ShowTopBarChanged.Event:connect(function() -- Line 475
		--[[ Upvalues[1]:
			[1]: module_upvr_2 (readonly)
		]]
		module_upvr_2:onShowTopBarChanged()
	end)
	local CurrentCamera = workspace.CurrentCamera
	CurrentCamera:GetPropertyChangedSignal("CFrame"):Connect(function() -- Line 480
		--[[ Upvalues[1]:
			[1]: module_upvr_2 (readonly)
		]]
		module_upvr_2:updateUIGroupsForCurCamera()
	end)
	CurrentCamera:GetPropertyChangedSignal("HeadScale"):Connect(function() -- Line 484
		--[[ Upvalues[1]:
			[1]: module_upvr_2 (readonly)
		]]
		module_upvr_2:rescaleUIForCurrentHeadScale()
		module_upvr_2:updateUIGroupsForCurHeadCFrame()
	end)
	local mouse = Players_upvr.LocalPlayer:GetMouse()
	if mouse then
		mouse.Move:Connect(function() -- Line 492
			--[[ Upvalues[2]:
				[1]: Players_upvr (copied, readonly)
				[2]: module_upvr_2 (readonly)
			]]
			local mouse_2 = Players_upvr.LocalPlayer:GetMouse()
			if mouse_2.Target ~= module_upvr_2.currentMouseTarget then
				module_upvr_2:onMouseTargetChanged(mouse_2.Target)
				module_upvr_2.currentMouseTarget = mouse_2.Target
			end
		end)
	end
	return module_upvr_2
end
local var158_upvw
function module_upvr.getInstance() -- Line 505
	--[[ Upvalues[2]:
		[1]: var158_upvw (read and write)
		[2]: module_upvr (readonly)
	]]
	if var158_upvw == nil then
		var158_upvw = module_upvr.new()
	end
	return var158_upvw
end
return module_upvr