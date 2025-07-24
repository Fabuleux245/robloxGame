-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:37:08
-- Luau version 6, Types version 3
-- Time taken: 0.034124 seconds

local VrCommon = script:FindFirstAncestor("VrCommon")
local VRService_upvr = game:GetService("VRService")
local CoreGui_upvr = game:GetService("CoreGui")
local VRUtil_upvr = require(VrCommon.VRUtil)
local Create_upvr = require(VrCommon.Parent.AppCommonLib).Create
local game_DefineFastFlag_result1_upvr_2 = game:DefineFastFlag("VRFreeUIPanel", false)
local vector2_upvr = Vector2.new(0, 0)
local cframe_upvr = CFrame.new(0, 0, -3)
local var9_upvw
local var10_upvw
local var11_upvw = math.huge
local var12_upvw
local var13_upvw = vector2_upvr
local tbl_2_upvr = {}
local var17_upvr = Create_upvr("Folder")({
	Name = "VRCorePanelParts";
	Archivable = false;
})
local var19_upvr = Create_upvr("Folder")({
	Name = "VRCoreEffectParts";
	Archivable = false;
})
local GuiService_upvr = game:GetService("GuiService")
pcall(function() -- Line 60
	--[[ Upvalues[3]:
		[1]: GuiService_upvr (readonly)
		[2]: var17_upvr (readonly)
		[3]: var19_upvr (readonly)
	]]
	GuiService_upvr.CoreGuiFolder = var17_upvr
	GuiService_upvr.CoreEffectFolder = var19_upvr
end)
local module_2_upvr = {
	Type = {
		None = 0;
		Standard = 1;
		Fixed = 2;
		HorizontalFollow = 3;
		FixedToHead = 4;
		NewStandard = 5;
		WristView = 6;
		PositionLocked = 7;
		UIManagerManaged = 8;
	};
	OnPanelClosed = Create_upvr("BindableEvent")({
		Name = "OnPanelClosed";
	});
	GetHeadLookXZ = function(arg1) -- Line 84, Named "GetHeadLookXZ"
		--[[ Upvalues[1]:
			[1]: VRService_upvr (readonly)
		]]
		local any_GetUserCFrame_result1_2 = VRService_upvr:GetUserCFrame(Enum.UserCFrame.Head)
		local lookVector = any_GetUserCFrame_result1_2.lookVector
		local cframe_3 = CFrame.Angles(0, math.atan2(-lookVector.Z, lookVector.X) - (math.pi/2), 0)
		if arg1 then
			cframe_3 += any_GetUserCFrame_result1_2.p
		end
		return cframe_3
	end;
	FindContainerOf = function(arg1) -- Line 96, Named "FindContainerOf"
		--[[ Upvalues[1]:
			[1]: tbl_2_upvr (readonly)
		]]
		for _, v in pairs(tbl_2_upvr) do
			if v.gui and v.gui:IsAncestorOf(arg1) then
				return v
			end
			for _, v_2 in pairs(v.subpanels) do
				if v_2.gui and v_2.gui:IsAncestorOf(arg1) then
					return v
				end
			end
		end
		return nil
	end;
	SetModalPanel = function(arg1) -- Line 110, Named "SetModalPanel"
		--[[ Upvalues[2]:
			[1]: var9_upvw (read and write)
			[2]: var10_upvw (read and write)
		]]
		if var9_upvw == arg1 then
		else
			if var9_upvw then
				var9_upvw:OnModalChanged(false)
			end
			if arg1 then
				arg1:OnModalChanged(true)
			end
			var10_upvw = var9_upvw
			var9_upvw = arg1
		end
	end;
	RaycastOntoPanel = function(arg1, arg2, arg3, arg4) -- Line 124, Named "RaycastOntoPanel"
		--[[ Upvalues[1]:
			[1]: VRUtil_upvr (readonly)
		]]
		local Size = arg1.Size
		local X = Size.X
		local Y_4 = Size.Y
		local any_GetRenderCFrame_result1 = arg1:GetRenderCFrame()
		local lookVector_2 = any_GetRenderCFrame_result1.lookVector
		local any_RayPlaneIntersection_result1 = VRUtil_upvr.RayPlaneIntersection(arg4, lookVector_2, any_GetRenderCFrame_result1.p + lookVector_2 * Size.Z * 0.5)
		if any_RayPlaneIntersection_result1 then
			local var44 = any_GetRenderCFrame_result1:pointToObjectSpace(any_RayPlaneIntersection_result1) * Vector3.new(-1, 1, 1) + Vector3.new(X / 2, -Y_4 / 2, 0)
			local vector2 = Vector2.new(var44.X / X * arg2.AbsoluteSize.X, var44.Y / Y_4 * -arg2.AbsoluteSize.Y)
			local X_3 = vector2.X
			local Y_2 = vector2.Y
			local X_2 = arg3.AbsolutePosition.X
			local Y_3 = arg3.AbsolutePosition.Y
			local var50 = false
			if arg2.Enabled and X_2 <= X_3 and X_3 <= X_2 + arg3.AbsoluteSize.X and Y_3 <= Y_2 and Y_2 <= Y_3 + arg3.AbsoluteSize.Y then
				var50 = true
			end
			return any_RayPlaneIntersection_result1, var44, vector2, var50
		end
		return nil, nil, nil, false
	end;
}
local tbl_3_upvr = {}
tbl_3_upvr.__index = tbl_3_upvr
local function new(arg1) -- Line 172
	--[[ Upvalues[3]:
		[1]: module_2_upvr (readonly)
		[2]: tbl_2_upvr (readonly)
		[3]: tbl_3_upvr (readonly)
	]]
	local module = {}
	module.name = arg1
	module.part = false
	module.gui = false
	module.width = 1
	module.height = 1
	module.isVisible = false
	module.isEnabled = false
	module.panelType = module_2_upvr.Type.None
	module.pixelScale = 1
	module.showCursor = true
	module.canFade = true
	module.shouldFindLookAtGuiElement = false
	module.ignoreModal = false
	module.needsPositionUpdate = false
	module.alwaysUpdatePosition = false
	module.linkedTo = false
	module.subpanels = {}
	module.transparency = 0
	module.forceShowUntilLookedAt = false
	module.forceShowUntilTick = 0
	module.isLookedAt = false
	module.isWristHeldUp = false
	module.isOffscreen = true
	module.lookAtPixel = Vector2.new(-1, -1)
	module.cursorPos = Vector2.new(-1, -1)
	module.lookAtDistance = math.huge
	module.lookAtGuiElement = false
	module.isClosest = true
	module.localCF = CFrame.new()
	module.originCF = CFrame.new()
	module.angleFromHorizon = false
	module.angleFromForward = false
	module.distance = 0
	module.lerpTime = 0
	module.lerpInitialCF = nil
	module.lerpScaleSize = Vector2.new(0, 0)
	module.lerpInitialSize = Vector2.new(0, 0)
	module.FollowView = true
	module.LastFollowCF = nil
	module.LastCameraPos = Vector3.new(0, 0, 0)
	module.followYawView = CFrame.new()
	module.userHeadRecentered = false
	module.lastHeadYaw = 0
	module.wristTargetPosition = Vector3.new()
	if tbl_2_upvr[arg1] then
		error("A panel by the name of "..arg1.." already exists.")
	end
	tbl_2_upvr[arg1] = module
	return setmetatable(module, tbl_3_upvr)
end
tbl_3_upvr.new = new
local function GetPart(arg1) -- Line 239
	--[[ Upvalues[2]:
		[1]: Create_upvr (readonly)
		[2]: var17_upvr (readonly)
	]]
	if not arg1.part then
		arg1.part = Create_upvr("Part")({
			Name = arg1.name;
			Parent = var17_upvr;
			Transparency = 1;
			CanCollide = false;
			CanTouch = false;
			Anchored = true;
			Size = Vector3.new(1, 1, 0.20000);
		})
	end
	return arg1.part
end
tbl_3_upvr.GetPart = GetPart
local function GetGUI(arg1) -- Line 257
	--[[ Upvalues[2]:
		[1]: Create_upvr (readonly)
		[2]: CoreGui_upvr (readonly)
	]]
	if not arg1.gui then
		local tbl = {
			Parent = CoreGui_upvr;
			Name = arg1.name;
			Archivable = false;
			Adornee = arg1:GetPart();
			Active = true;
			ToolPunchThroughDistance = 1000;
		}
		local CanvasSize = arg1.CanvasSize
		if not CanvasSize then
			CanvasSize = Vector2.new(1000, 1000)
		end
		tbl.CanvasSize = CanvasSize
		tbl.Enabled = arg1.isEnabled
		tbl.AlwaysOnTop = true
		arg1.gui = Create_upvr("SurfaceGui")(tbl)
	end
	return arg1.gui
end
tbl_3_upvr.GetGUI = GetGUI
function tbl_3_upvr.FindHoveredGuiElement(arg1, arg2) -- Line 275
	local X_4 = arg1.lookAtPixel.X
	local Y = arg1.lookAtPixel.Y
	for i_3, v_3 in pairs(arg2) do
		local AbsolutePosition = v_3.AbsolutePosition
		local var64 = v_3.AbsolutePosition + v_3.AbsoluteSize
		if AbsolutePosition.X <= X_4 and X_4 <= var64.X and AbsolutePosition.Y <= Y and Y <= var64.Y then
			return v_3, i_3
		end
	end
end
local var65_upvr = CFrame.new(0, 0, -0.1) * CFrame.Angles(0, math.pi, 0)
function tbl_3_upvr.SetPartCFrame(arg1, arg2) -- Line 289
	--[[ Upvalues[1]:
		[1]: var65_upvr (readonly)
	]]
	arg1:GetPart().CFrame = arg2 * var65_upvr
end
local function SetEnabled(arg1, arg2) -- Line 293
	--[[ Upvalues[1]:
		[1]: var17_upvr (readonly)
	]]
	if arg1.isEnabled == arg2 then
	else
		arg1.isEnabled = arg2
		if arg2 then
			arg1:GetPart().Parent = var17_upvr
			arg1:GetGUI().Enabled = true
			for _, v_9 in pairs(arg1.subpanels) do
				v_9:SetEnabled(v_9:GetEnabled())
			end
		else
			arg1:GetPart().Parent = nil
			arg1:GetGUI().Enabled = false
			for _, v_10 in pairs(arg1.subpanels) do
				v_10:SetEnabled(v_10:GetEnabled())
			end
		end
		arg1:OnEnabled(arg2)
	end
end
tbl_3_upvr.SetEnabled = SetEnabled
function tbl_3_upvr.StartLerp(arg1, arg2) -- Line 316
	--[[ Upvalues[1]:
		[1]: module_2_upvr (readonly)
	]]
	local var76
	if var76 == module_2_upvr.Type.UIManagerManaged then
	else
		var76 = arg1:GetPart().CFrame * CFrame.new(0, -1.5, 0)
		arg1.lerpInitialCF = var76
		var76 = 1
		arg1.lerpTime = var76
		var76 = Vector2.new(arg1.width, arg1.height)
		arg1.lerpInitialSize = var76
		local function INLINED() -- Internal function, doesn't exist in bytecode
			var76 = arg2
			return var76
		end
		if not arg2 or not INLINED() then
			var76 = Vector2.new(0, 0)
		end
		arg1.lerpScaleSize = var76
	end
end
local cframe_2_upvr = CFrame.new(0, -0.5, -5.5)
local game_DefineFastFlag_result1_upvr = game:DefineFastFlag("VRHeadLockedFixUIPosition", false)
function tbl_3_upvr.EvaluatePositioning(arg1, arg2, arg3, arg4, arg5) -- Line 327
	--[[ Upvalues[7]:
		[1]: module_2_upvr (readonly)
		[2]: cframe_2_upvr (readonly)
		[3]: VRService_upvr (readonly)
		[4]: cframe_upvr (readonly)
		[5]: VRUtil_upvr (readonly)
		[6]: game_DefineFastFlag_result1_upvr_2 (readonly)
		[7]: game_DefineFastFlag_result1_upvr (readonly)
	]]
	if arg1.panelType == module_2_upvr.Type.UIManagerManaged then
	else
		if arg1.panelType == module_2_upvr.Type.Fixed then
			arg1:SetPartCFrame(arg2 * (arg1.localCF - arg1.localCF.p + arg1.localCF.p * workspace.CurrentCamera.HeadScale))
		elseif arg1.panelType == module_2_upvr.Type.HorizontalFollow then
			arg1:SetPartCFrame((arg2) * (CFrame.new(arg4.p, arg4.p + arg4.lookVector * Vector3.new(1, 0, 1)) * arg1.angleFromForward * arg1.angleFromHorizon * CFrame.new(0, 0, workspace.CurrentCamera.HeadScale * -arg1.distance)))
		elseif arg1.panelType == module_2_upvr.Type.FixedToHead then
			arg1:SetPartCFrame(arg3 * (arg1.localCF - arg1.localCF.p + arg1.localCF.p * workspace.CurrentCamera.HeadScale))
		elseif arg1.panelType == module_2_upvr.Type.Standard then
			if arg1.needsPositionUpdate or arg1.alwaysUpdatePosition then
				arg1.needsPositionUpdate = false
				arg1.originCF = module_2_upvr.GetHeadLookXZ(true) * CFrame.new(cframe_2_upvr.Position * workspace.CurrentCamera.HeadScale)
			end
			arg1:SetPartCFrame(arg2 * arg1.originCF * arg1.localCF)
		elseif arg1.panelType == module_2_upvr.Type.NewStandard then
			if arg1.needsPositionUpdate or arg1.alwaysUpdatePosition then
				arg1.needsPositionUpdate = false
				arg1.originCF = VRService_upvr:GetUserCFrame(Enum.UserCFrame.Head) * CFrame.new(cframe_upvr.Position * workspace.CurrentCamera.HeadScale)
			end
			arg1:SetPartCFrame(arg2 * arg1.originCF * arg1.localCF)
		elseif arg1.panelType == module_2_upvr.Type.WristView then
			if VRService_upvr:GetUserCFrameEnabled(Enum.UserCFrame.LeftHand) then
				if arg1.needsPositionUpdate or arg1.alwaysUpdatePosition then
					arg1.needsPositionUpdate = false
					arg1.originCF = CFrame.new(VRService_upvr:GetUserCFrame(Enum.UserCFrame.LeftHand).Position * workspace.CurrentCamera.HeadScale)
				end
				local var79 = arg2 * VRService_upvr:GetUserCFrame(Enum.UserCFrame.Head)
				local Position = (arg2 * arg1.originCF).Position
				if 0 < arg1.distance then
					Position = Vector3.new(Position.x, var79.Position.y - 0.33, Position.z)
					Position = var79.Position + (Position - var79.Position).Unit * math.clamp((Position - var79.Position).Magnitude, arg1.distance - 0.5, arg1.distance + 0.5)
				end
				arg1:GetPart().CFrame = CFrame.new(Position, Vector3.new(var79.Position.x, Position.y, var79.Position.z))
			else
				arg1:SetPartCFrame(arg2 * (arg1.localCF - arg1.localCF.p + arg1.localCF.p * workspace.CurrentCamera.HeadScale))
			end
		elseif arg1.panelType == module_2_upvr.Type.PositionLocked then
			local any_GetUserCFrameWorldSpace_result1 = VRUtil_upvr.GetUserCFrameWorldSpace(Enum.UserCFrame.Head)
			if game_DefineFastFlag_result1_upvr_2 then
				local var82
				if game_DefineFastFlag_result1_upvr and not workspace.CurrentCamera.HeadLocked then
					var82 = arg2 * VRService_upvr:GetUserCFrame(Enum.UserCFrame.Head):Inverse()
					var82 -= var82.p
				else
					var82 = arg2 - arg2.p
				end
				local _, any_ToEulerAnglesYXZ_result2, _ = any_GetUserCFrameWorldSpace_result1 * var82:Inverse():ToEulerAnglesYXZ()
				local cframe = CFrame.fromEulerAnglesYXZ(0, any_ToEulerAnglesYXZ_result2, 0)
				if arg1.userHeadRecentered then
					local _, any_ToEulerAnglesYXZ_result2_2, _ = arg1.followYawView:ToEulerAnglesYXZ()
					arg1.followYawView = CFrame.fromEulerAnglesYXZ(0, (any_ToEulerAnglesYXZ_result2_2) + (any_ToEulerAnglesYXZ_result2 - arg1.lastHeadYaw), 0)
					arg1.userHeadRecentered = false
				end
				if arg1.followYawView.LookVector:Dot(cframe.LookVector) < 0.85 then
					arg1.FollowView = true
				elseif 0.99 < arg1.followYawView.LookVector:Dot(cframe.LookVector) then
					arg1.FollowView = false
				end
				if arg1.FollowView then
					arg1.followYawView = arg1.followYawView:Lerp(cframe, arg5 * 3)
				end
				local var90 = var82 * arg1.followYawView
				local var91 = (var90) + (any_GetUserCFrameWorldSpace_result1.Position + (var90.LookVector) * (arg1.distance * workspace.CurrentCamera.HeadScale) - (var90.UpVector) * (0.5 * workspace.CurrentCamera.HeadScale))
				arg1:SetPartCFrame(var91)
				arg1.LastFollowCF = var91
				arg1.lastHeadYaw = any_ToEulerAnglesYXZ_result2
			else
				var82 = arg1.LastFollowCF
				if not var82 then
					arg1.LastFollowCF = any_GetUserCFrameWorldSpace_result1
				end
				var82 = (arg1.LastCameraPos - arg2.Position).Magnitude
				if 0.1 < var82 then
					arg1.LastFollowCF = any_GetUserCFrameWorldSpace_result1
				end
				var82 = arg2.Position
				arg1.LastCameraPos = var82
				var82 = arg1.LastFollowCF.LookVector:Dot(any_GetUserCFrameWorldSpace_result1.LookVector)
				if var82 < 0.85 then
					var82 = true
					arg1.FollowView = var82
				else
					var82 = arg1.LastFollowCF.LookVector:Dot(any_GetUserCFrameWorldSpace_result1.LookVector)
					if 0.99 < var82 then
						var82 = false
						arg1.FollowView = var82
					end
				end
				var82 = arg1.FollowView
				if var82 then
					var82 = arg1.LastFollowCF:Lerp(any_GetUserCFrameWorldSpace_result1, 0.1)
					arg1.LastFollowCF = var82
				end
				var82 = any_GetUserCFrameWorldSpace_result1.Position + arg1.LastFollowCF.LookVector * (arg1.distance * workspace.CurrentCamera.HeadScale + 0.1)
				local var92 = var82
				var92 = Vector3.new(var92.X, any_GetUserCFrameWorldSpace_result1.Position.Y - 0.5 * workspace.CurrentCamera.HeadScale, var92.Z)
				local var93 = var92
				arg1:GetPart().CFrame = CFrame.new(var93, Vector3.new(any_GetUserCFrameWorldSpace_result1.Position.x, var93.y, any_GetUserCFrameWorldSpace_result1.Position.z))
			end
		end
		local function INLINED_2() -- Internal function, doesn't exist in bytecode
			var93 = 0
			return var93 < arg1.lerpTime
		end
		local function INLINED_3() -- Internal function, doesn't exist in bytecode
			arg1:GetPart().CFrame = arg1.lerpInitialCF:Lerp(var93.CFrame, var93)
			var93 = math.clamp(1 - arg1.lerpTime, 0, 1)
			arg1.lerpTime = var93
			var93 -= arg5 * 4
			var93 = arg1.lerpTime
			var93 = arg1:GetPart()
			return 0 < arg1.lerpScaleSize.x
		end
		if arg1.lerpInitialCF and INLINED_2() and (INLINED_3() or 0 < arg1.lerpScaleSize.y) then
			local any_Lerp_result1 = arg1.lerpInitialSize:Lerp(arg1.lerpScaleSize, var93)
			arg1:ResizeStuds(any_Lerp_result1.x, any_Lerp_result1.y, arg1.pixelsPerStud)
		end
	end
end
function tbl_3_upvr.OnRecentered(arg1) -- Line 514
	arg1.userHeadRecentered = true
end
local function SetLookedAt(arg1, arg2) -- Line 518
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [3] 3. Error Block 2 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [3] 3. Error Block 2 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [21] 14. Error Block 4 start (CF ANALYSIS FAILED)
	arg1.forceShowUntilLookedAt = false
	do
		return
	end
	-- KONSTANTERROR: [21] 14. Error Block 4 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [25] 17. Error Block 9 start (CF ANALYSIS FAILED)
	if arg1.isLookedAt and not arg2 then
		arg1.isLookedAt = false
		arg1:OnMouseLeave(arg1.lookAtPixel.X, arg1.lookAtPixel.Y)
	end
	-- KONSTANTERROR: [25] 17. Error Block 9 end (CF ANALYSIS FAILED)
end
tbl_3_upvr.SetLookedAt = SetLookedAt
function tbl_3_upvr.EvaluateGaze(arg1, arg2, arg3, arg4, arg5, arg6) -- Line 531
	--[[ Upvalues[6]:
		[1]: vector2_upvr (readonly)
		[2]: module_2_upvr (readonly)
		[3]: var13_upvw (read and write)
		[4]: var12_upvw (read and write)
		[5]: VRService_upvr (readonly)
		[6]: var11_upvw (read and write)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 49 start (CF ANALYSIS FAILED)
	arg1.isClosest = false
	arg1.lookAtPixel = vector2_upvr
	arg1.lookAtDistance = math.huge
	local var125
	for _, v_4 in pairs(arg1.subpanels) do
		if v_4.part and v_4.guiElement then
			local any_RaycastOntoPanel_result1, _, any_RaycastOntoPanel_result3_2, any_RaycastOntoPanel_result4 = module_2_upvr.RaycastOntoPanel(v_4.part, v_4.gui, v_4.guiElement, arg6)
			if any_RaycastOntoPanel_result1 then
				v_4.lookAtPixel = any_RaycastOntoPanel_result3_2
				v_4.cursorPos = any_RaycastOntoPanel_result3_2
				if any_RaycastOntoPanel_result4 and 0 < v_4.depthOffset then
					var125 = v_4
				end
			end
		end
	end
	-- KONSTANTERROR: [0] 1. Error Block 49 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [50] 34. Error Block 10 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [50] 34. Error Block 10 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [55] 37. Error Block 48 start (CF ANALYSIS FAILED)
	var13_upvw = var125.cursorPos
	var12_upvw = var125
	for _, v_5 in pairs(arg1.subpanels) do
		if v_5 ~= var125 then
			v_5:SetLookedAt(false)
		end
	end
	var125:SetLookedAt(true)
	-- KONSTANTERROR: [55] 37. Error Block 48 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [77] 52. Error Block 16 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [77] 52. Error Block 16 end (CF ANALYSIS FAILED)
end
function tbl_3_upvr.EvaluateTransparency(arg1) -- Line 637
	--[[ Upvalues[1]:
		[1]: module_2_upvr (readonly)
	]]
	if arg1.panelType == module_2_upvr.Type.UIManagerManaged then
		arg1.transparency = 1
	else
		if arg1.forceShowUntilLookedAt or not arg1.canFade or tick() < arg1.forceShowUntilTick then
			arg1.transparency = 0
			return
		end
		if arg1.isLookedAt then
			arg1.transparency = 0
			return
		end
		if arg1.isOffscreen then
			arg1.transparency = 1
			return
		end
		arg1.transparency = arg1:CalculateTransparency()
	end
end
local function Update(arg1, arg2, arg3, arg4, arg5, arg6, arg7) -- Line 663
	--[[ Upvalues[1]:
		[1]: var9_upvw (read and write)
	]]
	local var137
	local function INLINED_4() -- Internal function, doesn't exist in bytecode
		var137 = arg1.forceShowUntilTick
		return tick() < var137
	end
	local function INLINED_5() -- Internal function, doesn't exist in bytecode
		var137 = arg1.part
		return var137
	end
	if var137 or INLINED_4() or not INLINED_5() then
		var137 = arg1:GetPart
		var137()
		var137 = arg1:GetGUI
		var137()
	end
	var137 = arg1.part
	if not var137 then
	else
		if var9_upvw ~= arg1 then
			var137 = false
		else
		end
		if not true and arg1.linkedTo and arg1.linkedTo == var9_upvw then
		end
		if var9_upvw and not true then
			arg1:SetEnabled(false)
			return
		end
		arg1:PreUpdate(arg2, arg3, arg4, arg5, arg7)
		if arg1.isVisible then
			arg1:EvaluatePositioning(arg2, arg3, arg4, arg7)
			for _, v_11 in pairs(arg1.subpanels) do
				v_11:Update()
			end
			arg1:EvaluateGaze(arg2, arg3, arg4, arg5, arg6)
			arg1:EvaluateTransparency(arg2, arg3)
			return
		end
		if arg1.alwaysUpdatePosition then
			arg1:EvaluatePositioning(arg2, arg3, arg4, arg7)
		end
	end
end
tbl_3_upvr.Update = Update
function tbl_3_upvr.PreUpdate(arg1, arg2, arg3, arg4, arg5, arg6) -- Line 700
end
function tbl_3_upvr.OnUpdate(arg1, arg2) -- Line 703
end
local function OnMouseEnter(arg1, arg2, arg3) -- Line 706
end
tbl_3_upvr.OnMouseEnter = OnMouseEnter
local function OnMouseLeave(arg1, arg2, arg3) -- Line 709
end
tbl_3_upvr.OnMouseLeave = OnMouseLeave
function tbl_3_upvr.OnEnabled(arg1, arg2) -- Line 712
end
function tbl_3_upvr.OnModalChanged(arg1, arg2) -- Line 715
end
function tbl_3_upvr.OnVisibilityChanged(arg1, arg2) -- Line 718
end
function tbl_3_upvr.CalculateTransparency(arg1) -- Line 721
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [3] 3. Error Block 2 start (CF ANALYSIS FAILED)
	do
		return 0
	end
	-- KONSTANTERROR: [3] 3. Error Block 2 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [5] 5. Error Block 3 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [5] 5. Error Block 3 end (CF ANALYSIS FAILED)
end
function tbl_3_upvr.ResizeStuds(arg1, arg2, arg3, arg4) -- Line 751
	--[[ Upvalues[1]:
		[1]: module_2_upvr (readonly)
	]]
	if arg1.panelType == module_2_upvr.Type.UIManagerManaged then
	else
		local var143 = arg4 or 64
		arg1.width = arg2
		arg1.height = arg3
		arg1.pixelScale = var143 / 64
		local any_GetPart_result1_2 = arg1:GetPart()
		any_GetPart_result1_2.Size = Vector3.new(arg1.width * workspace.CurrentCamera.HeadScale, arg1.height * workspace.CurrentCamera.HeadScale, 0.2)
		local any_GetGUI_result1 = arg1:GetGUI()
		any_GetGUI_result1.CanvasSize = Vector2.new(var143 * arg1.width, var143 * arg1.height)
		for _, v_12 in pairs(arg1.subpanels) do
			if v_12.part then
				v_12.part.Size = any_GetPart_result1_2.Size
			end
			if v_12.gui then
				v_12.gui.CanvasSize = any_GetGUI_result1.CanvasSize
			end
		end
	end
end
function tbl_3_upvr.ResizePixels(arg1, arg2, arg3, arg4) -- Line 782
	local var149 = arg4 or 64
	arg1:ResizeStuds(arg2 / var149, arg3 / var149, var149)
end
function tbl_3_upvr.OnHeadScaleChanged(arg1) -- Line 790
	arg1:ResizeStuds(arg1.width, arg1.height, arg1.pixelScale * 64)
end
function tbl_3_upvr.SetType(arg1, arg2, arg3) -- Line 795
	--[[ Upvalues[1]:
		[1]: module_2_upvr (readonly)
	]]
	arg1.panelType = arg2
	arg1.localCF = CFrame.new()
	arg1.angleFromHorizon = false
	arg1.angleFromForward = false
	arg1.distance = 0
	local var150
	if not var150 then
		var150 = {}
	end
	if arg2 == module_2_upvr.Type.None then
	else
		if arg2 == module_2_upvr.Type.Standard then
			local CFrame = var150.CFrame
			if not CFrame then
				CFrame = CFrame.new()
			end
			arg1.localCF = CFrame
			return
		end
		if arg2 == module_2_upvr.Type.Fixed then
			local CFrame_4 = var150.CFrame
			if not CFrame_4 then
				CFrame_4 = CFrame.new()
			end
			arg1.localCF = CFrame_4
			return
		end
		if arg2 == module_2_upvr.Type.HorizontalFollow then
			arg1.angleFromHorizon = CFrame.Angles(var150.angleFromHorizon or 0, 0, 0)
			arg1.angleFromForward = CFrame.Angles(0, var150.angleFromForward or 0, 0)
			arg1.distance = var150.distance or 5
			return
		end
		if arg2 == module_2_upvr.Type.FixedToHead then
			local CFrame_3 = var150.CFrame
			if not CFrame_3 then
				CFrame_3 = CFrame.new()
			end
			arg1.localCF = CFrame_3
			return
		end
		if arg2 == module_2_upvr.Type.NewStandard then
			local CFrame_9 = var150.CFrame
			if not CFrame_9 then
				CFrame_9 = CFrame.new()
			end
			arg1.localCF = CFrame_9
			return
		end
		if arg2 == module_2_upvr.Type.WristView then
			local CFrame_2 = var150.CFrame
			if not CFrame_2 then
				CFrame_2 = CFrame.new()
			end
			arg1.localCF = CFrame_2
			arg1.distance = 0
			return
		end
		if arg2 == module_2_upvr.Type.PositionLocked then
			local CFrame_6 = var150.CFrame
			if not CFrame_6 then
				CFrame_6 = CFrame.new()
			end
			arg1.localCF = CFrame_6
			return
		end
		if arg2 == module_2_upvr.Type.UIManagerManaged then
			arg1.part = var150.uiManagerPanelPart
			return
		end
		error("Invalid Panel type")
	end
end
function tbl_3_upvr.IsUIManagerManagedType(arg1) -- Line 837
	--[[ Upvalues[1]:
		[1]: module_2_upvr (readonly)
	]]
	local var157
	if arg1.panelType ~= module_2_upvr.Type.UIManagerManaged then
		var157 = false
	else
		var157 = true
	end
	return var157
end
function tbl_3_upvr.IsPositionLockedType(arg1) -- Line 841
	--[[ Upvalues[1]:
		[1]: module_2_upvr (readonly)
	]]
	local var158
	if arg1.panelType ~= module_2_upvr.Type.PositionLocked then
		var158 = false
	else
		var158 = true
	end
	return var158
end
function tbl_3_upvr.SetVisible(arg1, arg2, arg3) -- Line 845
	--[[ Upvalues[5]:
		[1]: module_2_upvr (readonly)
		[2]: VRService_upvr (readonly)
		[3]: cframe_upvr (readonly)
		[4]: var9_upvw (read and write)
		[5]: var10_upvw (read and write)
	]]
	if arg2 ~= arg1.isVisible then
		arg1:OnVisibilityChanged(arg2)
		if not arg2 then
			module_2_upvr.OnPanelClosed:Fire(arg1.name)
		else
			arg1.needsPositionUpdate = true
			if arg1.panelType == module_2_upvr.Type.WristView then
				arg1.originCF = VRService_upvr:GetUserCFrame(Enum.UserCFrame.Head) * cframe_upvr
			end
		end
	end
	arg1.isVisible = arg2
	arg1:SetEnabled(arg2)
	if arg2 and arg3 then
		module_2_upvr.SetModalPanel(arg1)
	end
	if not arg2 and var9_upvw == arg1 then
		if arg3 then
			module_2_upvr.SetModalPanel(var10_upvw)
		else
			module_2_upvr.SetModalPanel(nil)
			if var10_upvw == arg1 then
				var10_upvw = nil
			end
		end
	end
	if not arg2 and arg1.forceShowUntilLookedAt then
		arg1.forceShowUntilLookedAt = false
	end
end
function tbl_3_upvr.IsVisible(arg1) -- Line 885
	return arg1.isVisible
end
function tbl_3_upvr.LinkTo(arg1, arg2) -- Line 889
	--[[ Upvalues[1]:
		[1]: module_2_upvr (readonly)
	]]
	if type(arg2) == "string" then
		arg1.linkedTo = module_2_upvr.Get(arg2)
	else
		arg1.linkedTo = arg2
	end
end
function tbl_3_upvr.ForceShowUntilLookedAt(arg1, arg2) -- Line 897
	arg1:GetPart()
	arg1:GetGUI()
	arg1:SetVisible(true, arg2)
	arg1:RequestPositionUpdate()
	arg1.forceShowUntilLookedAt = true
end
function tbl_3_upvr.ForceShowForSeconds(arg1, arg2) -- Line 907
	arg1:GetPart()
	arg1:GetGUI()
	arg1:SetVisible(true)
	if arg1.forceShowUntilTick < tick() then
		arg1:RequestPositionUpdate()
	end
	arg1.forceShowUntilTick = tick() + arg2
end
function tbl_3_upvr.SetCanFade(arg1, arg2) -- Line 918
	arg1.canFade = arg2
end
function tbl_3_upvr.RequestPositionUpdate(arg1) -- Line 922
	arg1.needsPositionUpdate = true
end
function tbl_3_upvr.ForcePositionUpdate(arg1, arg2) -- Line 926
	arg1.alwaysUpdatePosition = arg2
end
function tbl_3_upvr.GetGuiPositionInPanelSpace(arg1, arg2) -- Line 930
	local AbsoluteSize = arg1.gui.AbsoluteSize
	local var160 = (arg2 - AbsoluteSize / 2) / AbsoluteSize * Vector2.new(arg1.part.Size.X, arg1.part.Size.Y)
	return Vector3.new(var160.X, var160.Y, 0.1)
end
function tbl_3_upvr.GetCFrameInCameraSpace(arg1) -- Line 941
	--[[ Upvalues[1]:
		[1]: module_2_upvr (readonly)
	]]
	if arg1.panelType == module_2_upvr.Type.Standard or arg1.panelType == module_2_upvr.Type.NewStandard then
		return arg1.originCF * arg1.localCF
	end
	local localCF = arg1.localCF
	if not localCF then
		localCF = CFrame.new()
	end
	return localCF
end
local tbl_6_upvr = {}
tbl_6_upvr.__index = tbl_6_upvr
function tbl_6_upvr.new(arg1, arg2) -- Line 952
	--[[ Upvalues[1]:
		[1]: tbl_6_upvr (readonly)
	]]
	local module_3_upvr = {}
	module_3_upvr.parentPanel = arg1
	module_3_upvr.guiElement = arg2
	module_3_upvr.lastParent = arg2.Parent
	module_3_upvr.ancestryConn = nil
	module_3_upvr.changedConn = nil
	module_3_upvr.lookAtPixel = Vector2.new(-1, -1)
	module_3_upvr.cursorPos = Vector2.new(-1, -1)
	module_3_upvr.lookedAt = false
	module_3_upvr.isEnabled = true
	module_3_upvr.part = nil
	module_3_upvr.gui = nil
	module_3_upvr.guiSurrogate = nil
	module_3_upvr.depthOffset = 0
	setmetatable(module_3_upvr, tbl_6_upvr)
	module_3_upvr:GetGUI()
	module_3_upvr:UpdateSurrogate()
	module_3_upvr:WatchParent(module_3_upvr.lastParent)
	arg2.Parent = module_3_upvr.guiSurrogate
	local function ancestryCallback_upvr(arg1_2, arg2_2) -- Line 980, Named "ancestryCallback"
		--[[ Upvalues[3]:
			[1]: module_3_upvr (readonly)
			[2]: arg2 (readonly)
			[3]: ancestryCallback_upvr (readonly)
		]]
		module_3_upvr:GetGUI().Enabled = module_3_upvr.parentPanel:GetGUI():IsAncestorOf(module_3_upvr.lastParent)
		if not module_3_upvr:GetGUI().Enabled then
			module_3_upvr:GetPart().Parent = nil
		else
			module_3_upvr:GetPart().Parent = workspace.CurrentCamera
		end
		if arg2_2 == arg2 then
			module_3_upvr.ancestryConn:disconnect()
			module_3_upvr.lastParent = arg2.Parent
			arg2.Parent = module_3_upvr.guiSurrogate
			module_3_upvr:WatchParent(module_3_upvr.lastParent)
			module_3_upvr.ancestryConn = arg2.AncestryChanged:connect(ancestryCallback_upvr)
		end
	end
	module_3_upvr.ancestryConn = arg2.AncestryChanged:connect(ancestryCallback_upvr)
	return module_3_upvr
end
function tbl_6_upvr.Cleanup(arg1) -- Line 1004
	arg1.guiElement.Parent = arg1.lastParent
	if arg1.part then
		arg1.part:Destroy()
		arg1.part = nil
	end
	spawn(function() -- Line 1010
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		wait()
		if arg1.gui then
			arg1.gui:Destroy()
			arg1.gui = nil
		end
	end)
	if arg1.ancestryConn then
		arg1.ancestryConn:disconnect()
		arg1.ancestryConn = nil
	end
	if arg1.changedConn then
		arg1.changedConn:disconnect()
		arg1.changedConn = nil
	end
	arg1.lastParent = nil
	arg1.parentPanel = nil
	arg1.guiElement = nil
	arg1.guiSurrogate = nil
end
function tbl_6_upvr.OnMouseEnter(arg1, arg2, arg3) -- Line 1031
end
function tbl_6_upvr.OnMouseLeave(arg1, arg2, arg3) -- Line 1032
end
function tbl_6_upvr.SetLookedAt(arg1, arg2) -- Line 1034
	if arg2 and not arg1.lookedAt then
		arg1:OnMouseEnter(arg1.lookAtPixel.X, arg1.lookAtPixel.Y)
	elseif not arg2 and arg1.lookedAt then
		arg1:OnMouseLeave(arg1.lookAtPixel.X, arg1.lookAtPixel.Y)
	end
	arg1.lookedAt = arg2
end
function tbl_6_upvr.WatchParent(arg1, arg2) -- Line 1043
	if arg1.changedConn then
		arg1.changedConn:disconnect()
	end
	arg1.changedConn = arg2.Changed:connect(function(arg1_3) -- Line 1047
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		if arg1_3 == "AbsolutePosition" or arg1_3 == "AbsoluteSize" or arg1_3 == "Parent" then
			arg1:UpdateSurrogate()
		end
	end)
end
function tbl_6_upvr.UpdateSurrogate(arg1) -- Line 1054
	local lastParent = arg1.lastParent
	arg1.guiSurrogate.Position = UDim2.new(0, lastParent.AbsolutePosition.X, 0, lastParent.AbsolutePosition.Y)
	arg1.guiSurrogate.Size = UDim2.new(0, lastParent.AbsoluteSize.X, 0, lastParent.AbsoluteSize.Y)
end
function tbl_6_upvr.GetPart(arg1) -- Line 1060
	--[[ Upvalues[1]:
		[1]: var17_upvr (readonly)
	]]
	if arg1.part then
		return arg1.part
	end
	arg1.part = arg1.parentPanel:GetPart():Clone()
	arg1.part.Parent = var17_upvr
	return arg1.part
end
function tbl_6_upvr.GetGUI(arg1) -- Line 1070
	--[[ Upvalues[2]:
		[1]: Create_upvr (readonly)
		[2]: CoreGui_upvr (readonly)
	]]
	if arg1.gui then
		return arg1.gui
	end
	arg1.gui = Create_upvr("SurfaceGui")({
		Parent = CoreGui_upvr;
		Adornee = arg1:GetPart();
		Active = true;
		ToolPunchThroughDistance = 1000;
		CanvasSize = arg1.parentPanel:GetGUI().CanvasSize;
		Enabled = arg1.parentPanel.isEnabled;
		AlwaysOnTop = true;
	})
	arg1.guiSurrogate = Create_upvr("Frame")({
		Parent = arg1.gui;
		Active = false;
		Position = UDim2.new(0, 0, 0, 0);
		Size = UDim2.new(1, 0, 1, 0);
		BackgroundTransparency = 1;
	})
	return arg1.gui
end
function tbl_6_upvr.SetDepthOffset(arg1, arg2) -- Line 1097
	arg1.depthOffset = arg2
end
function tbl_6_upvr.Update(arg1) -- Line 1101
	local any_GetPart_result1_3 = arg1:GetPart()
	local any_GetPart_result1 = arg1.parentPanel:GetPart()
	if any_GetPart_result1_3 and any_GetPart_result1 then
		any_GetPart_result1_3.CFrame = any_GetPart_result1.CFrame * CFrame.new(0, 0, -arg1.depthOffset)
	end
end
function tbl_6_upvr.SetEnabled(arg1, arg2) -- Line 1110
	--[[ Upvalues[1]:
		[1]: var17_upvr (readonly)
	]]
	arg1.isEnabled = arg2
	if arg2 and arg1.parentPanel.isEnabled then
		arg1:GetPart().Parent = var17_upvr
		arg1:GetGUI().Enabled = true
	else
		arg1:GetPart().Parent = nil
		arg1:GetGUI().Enabled = false
	end
end
function tbl_6_upvr.GetEnabled(arg1) -- Line 1123
	return arg1.isEnabled
end
local function GetPixelScale(arg1) -- Line 1127
	return arg1.parentPanel:GetPixelScale()
end
tbl_6_upvr.GetPixelScale = GetPixelScale
function tbl_3_upvr.GetPixelScale(arg1) -- Line 1130
	return arg1.pixelScale
end
function tbl_3_upvr.AddSubpanel(arg1, arg2) -- Line 1134
	--[[ Upvalues[1]:
		[1]: tbl_6_upvr (readonly)
	]]
	local any_new_result1 = tbl_6_upvr.new(arg1, arg2)
	arg1.subpanels[arg2] = any_new_result1
	return any_new_result1
end
function tbl_3_upvr.RemoveSubpanel(arg1, arg2) -- Line 1140
	local var172 = arg1.subpanels[arg2]
	if var172 then
		var172:Cleanup()
	end
	arg1.subpanels[arg2] = nil
end
function tbl_3_upvr.SetSubpanelDepth(arg1, arg2, arg3) -- Line 1148
	local var173
	if arg3 == 0 then
		if var173 then
			arg1:RemoveSubpanel(arg2)
		end
		return nil
	end
	if not var173 then
		var173 = arg1:AddSubpanel(arg2)
	end
	var173:SetDepthOffset(arg3)
	return var173
end
function module_2_upvr.Get(arg1) -- Line 1170
	--[[ Upvalues[2]:
		[1]: tbl_2_upvr (readonly)
		[2]: tbl_3_upvr (readonly)
	]]
	local var174 = tbl_2_upvr[arg1]
	if not tbl_2_upvr[arg1] then
		tbl_2_upvr[arg1] = tbl_3_upvr.new(arg1)
		var174 = tbl_2_upvr[arg1]
	end
	return var174
end
local tick_result1_2_upvw = tick()
local var176_upvr = Create_upvr("ImageLabel")({
	Image = "rbxasset://textures/Cursors/Gamepad/Pointer.png";
	ImageColor3 = Color3.new(0, 1, 0);
	BackgroundTransparency = 1;
	ZIndex = 1000000000;
})
local function onRenderStep_upvr() -- Line 1182, Named "onRenderStep"
	--[[ Upvalues[8]:
		[1]: VRService_upvr (readonly)
		[2]: tick_result1_2_upvw (read and write)
		[3]: var12_upvw (read and write)
		[4]: var11_upvw (read and write)
		[5]: tbl_2_upvr (readonly)
		[6]: var9_upvw (read and write)
		[7]: var13_upvw (read and write)
		[8]: var176_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	if not VRService_upvr.VREnabled then
	else
		local tick_result1 = tick()
		tick_result1_2_upvw = tick_result1
		var12_upvw = nil
		var11_upvw = math.huge
		local CurrentCamera_3 = workspace.CurrentCamera
		local CFrame_7 = CurrentCamera_3.CFrame
		local any_GetRenderCFrame_result1_3 = CurrentCamera_3:GetRenderCFrame()
		local var249 = CFrame_7 * VRService_upvr:GetUserCFrame(VRService_upvr.GuiInputUserCFrame)
		for _, v_13 in pairs(tbl_2_upvr) do
			v_13:Update(CFrame_7, any_GetRenderCFrame_result1_3, VRService_upvr:GetUserCFrame(Enum.UserCFrame.Head), Ray.new(any_GetRenderCFrame_result1_3.p, any_GetRenderCFrame_result1_3.lookVector), Ray.new(var249.p, var249.lookVector), tick_result1 - tick_result1_2_upvw)
			local _
		end
		local tbl_4 = {}
		for _, v_14 in pairs(tbl_2_upvr) do
			if not tbl_4[v_14] and v_14.linkedTo and v_14.isVisible and v_14.linkedTo.isVisible then
				tbl_4[v_14] = true
				tbl_4[v_14.linkedTo] = true
				local minimum_2 = math.min(v_14.transparency, v_14.linkedTo.transparency)
				v_14.transparency = minimum_2
				v_14.linkedTo.transparency = minimum_2
			end
		end
		for i_15, v_15 in pairs(tbl_2_upvr) do
			if v_15.part then
				local var262
				if var262 then
					if var9_upvw ~= v_15 then
						var262 = false
					else
					end
					if not true and v_15.linkedTo and v_15.linkedTo == var9_upvw then
					end
					if not true and var9_upvw then
					end
					if 1 <= v_15.transparency then
					end
					if v_15.forceShowUntilLookedAt then
					end
					local var263
					if not v_15.canFade and v_15.isVisible then
						var263 = true
					end
					v_15:SetEnabled(var263)
				end
			end
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			v_15:OnUpdate(tick_result1 - tick_result1_2_upvw)
		end
		if var12_upvw then
			local any_GetPixelScale_result1 = var12_upvw:GetPixelScale()
			i_15 = var176_upvr
			v_15 = UDim2.new(0, 3 * any_GetPixelScale_result1, 0, 3 * any_GetPixelScale_result1)
			i_15.Size = v_15
			i_15 = var176_upvr
			v_15 = UDim2.new(0, var13_upvw.X - var176_upvr.AbsoluteSize.x * 0.5, 0, var13_upvw.Y - var176_upvr.AbsoluteSize.y * 0.5)
			i_15.Position = v_15
			return
		end
		var176_upvr.Parent = nil
	end
end
local var265_upvw = true
local function _(arg1) -- Line 1268, Named "putFoldersIn"
	--[[ Upvalues[2]:
		[1]: var17_upvr (readonly)
		[2]: var19_upvr (readonly)
	]]
	var17_upvr.Parent = arg1
	var19_upvr.Parent = arg1
end
local function onHeadScaleChanged_upvr() -- Line 1274, Named "onHeadScaleChanged"
	--[[ Upvalues[1]:
		[1]: tbl_2_upvr (readonly)
	]]
	for _, v_6 in pairs(tbl_2_upvr) do
		v_6:OnHeadScaleChanged()
	end
end
local function onCameraCFrameChanged_upvr() -- Line 1281, Named "onCameraCFrameChanged"
	--[[ Upvalues[2]:
		[1]: VRService_upvr (readonly)
		[2]: tbl_2_upvr (readonly)
	]]
	local CurrentCamera_4 = workspace.CurrentCamera
	local CFrame_5 = CurrentCamera_4.CFrame
	local any_GetRenderCFrame_result1_2 = CurrentCamera_4:GetRenderCFrame()
	local any_GetUserCFrame_result1 = VRService_upvr:GetUserCFrame(Enum.UserCFrame.Head)
	local Ray_new_result1 = Ray.new(any_GetRenderCFrame_result1_2.p, any_GetRenderCFrame_result1_2.lookVector)
	local var280 = CFrame_5 * VRService_upvr:GetUserCFrame(VRService_upvr.GuiInputUserCFrame)
	local Ray_new_result1_2 = Ray.new(var280.p, var280.lookVector)
	for _, v_7 in pairs(tbl_2_upvr) do
		v_7:Update(CFrame_5, any_GetRenderCFrame_result1_2, any_GetUserCFrame_result1, Ray_new_result1, Ray_new_result1_2, 0)
	end
end
local var285_upvw
local var286_upvw
local function onCurrentCameraChanged_upvr() -- Line 1297, Named "onCurrentCameraChanged"
	--[[ Upvalues[9]:
		[1]: tbl_2_upvr (readonly)
		[2]: var285_upvw (read and write)
		[3]: onHeadScaleChanged_upvr (readonly)
		[4]: var286_upvw (read and write)
		[5]: onCameraCFrameChanged_upvr (readonly)
		[6]: VRService_upvr (readonly)
		[7]: var265_upvw (read and write)
		[8]: var17_upvr (readonly)
		[9]: var19_upvr (readonly)
	]]
	for _, v_8 in pairs(tbl_2_upvr) do
		v_8:OnHeadScaleChanged()
	end
	if var285_upvw then
		var285_upvw:disconnect()
	end
	var285_upvw = workspace.CurrentCamera:GetPropertyChangedSignal("HeadScale"):Connect(onHeadScaleChanged_upvr)
	if var286_upvw then
		var286_upvw:disconnect()
	end
	var286_upvw = workspace.CurrentCamera:GetPropertyChangedSignal("CFrame"):Connect(onCameraCFrameChanged_upvr)
	if VRService_upvr.VREnabled and var265_upvw then
		local CurrentCamera_2 = workspace.CurrentCamera
		var17_upvr.Parent = CurrentCamera_2
		var19_upvr.Parent = CurrentCamera_2
	end
end
local var293_upvw
local var294_upvw = false
local RunService_upvr = game:GetService("RunService")
local var296_upvr = "Panel3DRenderStep-"..game:GetService("HttpService"):GenerateGUID()
local var297_upvw
local function onVREnabledChanged() -- Line 1321
	--[[ Upvalues[13]:
		[1]: VRService_upvr (readonly)
		[2]: var265_upvw (read and write)
		[3]: onCurrentCameraChanged_upvr (readonly)
		[4]: var293_upvw (read and write)
		[5]: var17_upvr (readonly)
		[6]: var19_upvr (readonly)
		[7]: var294_upvw (read and write)
		[8]: RunService_upvr (readonly)
		[9]: var296_upvr (readonly)
		[10]: onRenderStep_upvr (readonly)
		[11]: game_DefineFastFlag_result1_upvr_2 (readonly)
		[12]: var297_upvw (read and write)
		[13]: tbl_2_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [6] 6. Error Block 4 start (CF ANALYSIS FAILED)
	wait()
	-- KONSTANTERROR: [6] 6. Error Block 4 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [4] 4. Error Block 25 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [4] 4. Error Block 25 end (CF ANALYSIS FAILED)
end
VRService_upvr:GetPropertyChangedSignal("VREnabled"):connect(onVREnabledChanged)
spawn(onVREnabledChanged)
coroutine.wrap(function() -- Line 1369
	--[[ Upvalues[1]:
		[1]: var265_upvw (read and write)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 13 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [0] 1. Error Block 13 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [5] 4. Error Block 14 start (CF ANALYSIS FAILED)
	if workspace.CurrentCamera.CameraSubject == nil and workspace.CurrentCamera.CameraType ~= Enum.CameraType.Scriptable then
		workspace.CurrentCamera.Changed:Wait()
		-- KONSTANTWARNING: GOTO [36] #21
	end
	-- KONSTANTERROR: [5] 4. Error Block 14 end (CF ANALYSIS FAILED)
end)()
return module_2_upvr